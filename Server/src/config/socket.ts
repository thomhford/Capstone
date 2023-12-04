// socket.ts
import { io } from '../index';
import {
    sendMessage,
    getConversations,
    getAvailableUsers,
    createConversation,
    deleteMessage,
    getMessage,
    getConversation,
    deleteConversation,
    queueMessage,
    deliverQueuedMessages,
} from '../controllers/conversationController';
import { eventEmitter } from "./events";
import admin from 'firebase-admin';
import { createUserSocket, getUserSocket, deleteUserSocket } from "../controllers/userSocketController";

/**
 * Middleware to authenticate the socket connection.
 * Verifies the token passed in the handshake query.
 * If the token is not valid, it throws an authentication error.
 */
io.use(async (socket, next) => {
    try {
        const token = socket.handshake.query.token as string;
        if (!token) {
            next(new Error('Authentication error'));
            return;
        }
        await admin.auth().verifyIdToken(token);
        next();
    } catch (error: unknown) {
        if (error instanceof Error) {
            console.error('Error authenticating socket:', error);
            next(new Error('Authentication error: ' + error.message));
        } else {
            console.error('Error authenticating socket:', error);
            next(new Error('Authentication error'));
        }
    }
});

/**
 * Event listener for a new socket connection.
 * Handles various socket events like 'register', 'fetch_conversations', 'read', 'typing', 'stop typing', 'message sent', 'message received', 'delete message', 'delete conversation', and 'disconnect'.
 */
io.on('connection',
    (socket) => {
        console.log('a user connected', socket.id);

        /**
         * Event listener for 'register' event.
         * When a user connects, their socket ID is stored in the database.
         * All the messages in the user's queue are sent.
         *
         * When a user connects, they should emit a 'register' event with their user ID
         */
        socket.on('register', async (userId) => {
            console.log('register', userId, socket.id);
            // When a user connects, store their socket ID in the database
            await createUserSocket(userId, socket.id);

            // Send all the messages in the user's queue
            const queue = await deliverQueuedMessages(userId);
            if (queue) {
                queue.forEach((message) => {
                    socket.emit('message received', message);
                });
            }
        });

        /**
         * Event listener for 'request conversations' event.
         * Fetches all the conversations of a user and emits 'conversations fetched' event.
         * If there's an error, it emits 'error' event with the 'Error fetching conversations' message.
         */
        socket.on('request conversations', async (userId) => {
            console.log('request conversations', userId);
            try {
                const conversations = await getConversations(userId);
                socket.emit('conversations list', conversations);
            } catch (error) {
                console.error('Error fetching conversations:', error);
                // Emit an 'error' event to the client
                socket.emit('error', { message: 'Error fetching conversations', details: error });
            }
        });

        /**
         * Event listener for 'fetch_user_list' event.
         * Fetches all the users of the application and emits 'user list fetched' event.
         */
        socket.on('request users', async (userId) => {
            console.log('request users', userId);
            try {
                const users = await getAvailableUsers(userId);
                socket.emit('user list', users);
            } catch (error) {
                console.error('Error fetching user list:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error fetching user list', details: error });
            }
        });

        /**
         * Event listener for 'create conversation' event.
         * Creates a new conversation between two users and emits 'conversation created' event to both users.
         */
        socket.on('create conversation', async ({ user1Id, user2Id }) => {
            try {
                // Call the createConversation method from the conversation controller
                const conversation = await createConversation(user1Id, user2Id);

                // If the conversation already exists, it should not be created again and will not be returned by the controller.
                // Throw an error to be emitted to the client
                if (!conversation) {
                    console.error('Cannot create conversation that already exists');
                    throw new Error('Cannot create conversation that already exists');
                }

                // Emit a 'conversation created' event to both users
                const user1Socket = await getUserSocket(user1Id);
                const user2Socket = await getUserSocket(user2Id);
                if (user1Socket) {
                    socket.to(user1Socket.socketId).emit('conversation created', conversation);
                }
                if (user2Socket) {
                    socket.to(user2Socket.socketId).emit('conversation created', conversation);
                }
                socket.emit('conversation created', conversation);
            } catch (error) {
                console.error('Error creating conversation:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error creating conversation', details: error });
            }
        });

        /**
         * Event listener for 'message sent' event.
         * Stores the message in the database and emits 'message received' event to all users in the conversation.
         */
        socket.on('message sent', async ({senderId, conversationId, message, type, fileId}) => {
            try {
                // Store the message in the database
                const savedMessage = await sendMessage({senderId, conversationId, text: message, type, fileId});

                // If the message is successfully stored, emit a 'message sent' event to all users in the conversation
                if (savedMessage) {
                    // Emit the message to all users in the conversation
                    const conversation = await getConversation(conversationId);

                    // If the conversation exists, emit a 'message received' event to all users in the conversation
                    if (conversation) {
                        for (const user of conversation.Users) {
                            const userSocketId = await getUserSocket(user.uid);
                            if (userSocketId) {
                                socket.to(userSocketId.socketId).emit('new message', savedMessage);
                            }
                        }
                    }
                    else {
                        // If the conversation does not exist, throw and error to be emitted to the client
                        throw new Error('Conversation does not exist')
                    }
                }
                else {
                    // If the message is not successfully stored, throw and error to be emitted to the client
                    throw new Error('Error storing message in the database')
                }
            } catch (error) {
                console.error('Error sending message:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error sending message', details: error });
            }
        });

        /**
         * Event Handler for 'message delivered'
         *
         * This event is triggered when a message is received from a user. The handler does the following:
         *
         * 1. Marks the message as received in the database.
         * 2. Fetches the conversation associated with the message.
         * 3. If the conversation exists, it emits a 'message received' event to all users in the conversation.
         *
         * @param messageId - The ID of the message that was received.
         *
         * @throws Will throw an error if there's an issue marking the message as received or fetching the conversation and will notify the client.
         */
        socket.on('message delivered', async (messageId) => {
            try {
                // Mark the message as received in the database
                const message = await getMessage(messageId);
                if (message) {
                    message.isReceived = true;
                    await message.save();

                    // Emit a 'message received' event to all users in the conversation
                    const conversation = await getConversation(message.conversationId);
                    if (conversation) {
                        for (const user of conversation.Users) {
                            const userSocket = await getUserSocket(user.uid);
                            if (userSocket) {
                                socket.to(userSocket.socketId).emit('message received', messageId);
                            }
                        }
                    }
                    else {
                        // If the conversation does not exist, throw and error to be emitted to the client
                        throw new Error('Conversation does not exist')
                    }
                }
                else {
                    // If the message does not exist, throw and error to be emitted to the client
                    throw new Error('Message does not exist')
                }
            } catch (error) {
                console.error('Error receiving message:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error receiving message', details: error });
            }
        });

        /**
         * Local Event Handler for 'message received'
         *
         * This event is triggered by the controller when a message is received from a user. The handler does the following:
         *
         * 1. Fetches the conversation associated with the message.
         * 2. If the conversation exists, it emits a 'new message' event to all users in the conversation.
         * 3. If the user is not connected, it adds the message to their queue.
         *
         * @param message - The message that was received.
         *
         * @throws Will throw an error if there's an issue fetching the conversation and will notify the client.
         */
        eventEmitter.on('message received', async ({message}) => {
            // Fetch the conversation of the message
            try {
                const conversation = await getConversation(message.conversationId);

                // If the conversation exists, emit a 'message received' event to all users in the conversation
                if (conversation) {
                    for (const user of conversation.Users) {
                        const userSocket = await getUserSocket(user.uid);
                        if (userSocket) {
                            socket.to(userSocket.socketId).emit('new message', message);
                        } else {
                            // If the user is not connected, add the message to their queue
                            await queueMessage(message);
                        }
                    }
                }
                else {
                    // If the conversation does not exist, throw and error to be emitted to the client
                    throw new Error('Conversation does not exist')
                }
            } catch (error) {
                console.error('Error receiving message:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error receiving message', details: error });
            }
        });

        /**
         * Event listener for 'message read' event.
         * Marks a message as read in the database and emits 'message read receipt' event to all users in the conversation.
         */
        socket.on('message read', async ({readerId, messageId}) => {
            try {
                // Fetch the message and its associated conversation from the database
                const message = await getMessage(messageId);
                const conversation = message ? await getConversation(message.conversationId) : null;

                // Check if the reader is one of the users in the conversation
                if (message && conversation && (conversation.user1Id === readerId || conversation.user2Id === readerId)) {
                    // Mark the message as read in the database
                    message.read = true;
                    await message.save();

                    // Emit a 'read' event to all users in the conversation
                    for (const userId of [conversation.user1Id, conversation.user2Id]) {
                        const userSocket = await getUserSocket(userId);
                        if (userSocket) {
                            socket.to(userSocket.socketId).emit('message read receipt', messageId, conversation.conversation_id);
                        }
                    }
                }
                else {
                    if (!message) {
                        console.error('Message does not exist');
                        throw new Error('Message does not exist');
                    } else if (!conversation) {
                        console.error('Conversation does not exist');
                        throw new Error('Conversation does not exist');
                    } else if (conversation.user1Id !== readerId && conversation.user2Id !== readerId) {
                        console.error('Reader is not a part of the conversation');
                        throw new Error('Reader is not a part of the conversation');
                    }
                }
            } catch (error) {
                console.error('Error marking message as read:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error marking message as read', details: error });
            }
        });

        /**
         * Event listener for 'user typing' event.
         * Emits 'user typing receipt' event to the recipient.
         */
        socket.on('user typing', async ({senderId, recipientId}) => {
            try {
                const recipientSocket = await getUserSocket(recipientId);
                if (recipientSocket) {
                    socket.to(recipientSocket.socketId).emit('user typing receipt', senderId);
                }
                else {
                    // If the recipient is not connected, emit an error event to the client
                    throw new Error('Recipient is not connected');
                }
            } catch (error) {
                console.error('Error sending typing receipt:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error sending typing receipt', details: error });
            }
        });

        /**
         * Event listener for 'user stop typing' event.
         * Emits 'user stop typing receipt' event to the recipient.
         */
        socket.on('user stop typing', async ({senderId, recipientId}) => {
            try {
                const recipientSocket = await getUserSocket(recipientId);
                if (recipientSocket) {
                    socket.to(recipientSocket.socketId).emit('user stop typing receipt', senderId);
                }
                else {
                    // If the recipient is not connected, emit an error event to the client
                    throw new Error('Recipient is not connected');
                }
            } catch (error) {
                console.error('Error sending stop typing receipt:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error sending stop typing receipt', details: error });
            }
        });

        /**
         * Event listener for 'delete message' event.
         * Deletes the message from the database and emits 'message deleted' event to all users in the conversation.
         */
        socket.on('delete message', async (messageId) => {
            try {
                // Delete the message from the database and get the deleted message
                const message = await deleteMessage(messageId);

                // If the message exists, emit a 'message deleted' event to all users in the conversation
                if (message) {
                    const conversation = await getConversation(message.conversationId);
                    if (conversation) {
                        for (const user of conversation.Users) {
                            const userSocket =  await getUserSocket(user.uid);
                            if (userSocket) {
                                socket.to(userSocket.socketId).emit('message deleted', messageId, conversation.conversation_id);
                            }
                        }
                    }
                }
                else {
                    // If the message does not exist, throw and error to be emitted to the client
                    throw new Error('Message does not exist')
                }
            } catch (error) {
                console.error('Error deleting message:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error deleting message', details: error });
            }
        });

        /**
         * Event listener for 'delete conversation' event.
         * Deletes the conversation from the database and emits 'conversation deleted' event to all users in the conversation.
         */
        socket.on('delete conversation', async (conversationId) => {
            try {
                // Delete the conversation from the database and get the deleted conversation
                const conversation = await deleteConversation(conversationId);

                // If the conversation exists, emit a 'conversation deleted' event to all users in the conversation
                if (conversation) {
                    for (const userId of [conversation.user1Id, conversation.user2Id]) {
                        const userSocket = await getUserSocket(userId);
                        if (userSocket) {
                            socket.to(userSocket.socketId).emit('conversation deleted', conversationId);
                        }
                    }
                }
                else {
                    // If the conversation does not exist, throw and error to be emitted to the client
                    throw new Error('Conversation does not exist')
                }
            } catch (error) {
                console.error('Error deleting conversation:', error);
                // Emit an error event to the client
                socket.emit('error', { message: 'Error deleting conversation', details: error });
            }
        });

        /**
         * Event listener for 'disconnect' event.
         * Removes the disconnected user from the map.
         */
        socket.on('disconnect', async () => {
            console.log('user disconnected', socket.id);
            // Remove the disconnected user from the map
            await deleteUserSocket(socket.id);
        });

        /**
         * Event listener for 'error' events from various socket related controllers.
         * Logs the error and emits 'error' event to the client.
         */
        eventEmitter.on('error', ({error, details}) => {
            console.error(error, details);
            socket.emit('error', { message: error, details: details });
        });
    });

export { io };