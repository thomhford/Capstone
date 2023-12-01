// socket.ts
import { io } from '../index';
import {
    sendMessage,
    getConversations,
    getAvailableUsers,
    deleteMessage,
    getMessage,
    getConversation,
    deleteConversation,
    queueMessage,
    deliverQueuedMessages
} from '../controllers/conversationController';
import { eventEmitter } from "./events";
import admin from 'firebase-admin';
import { createUserSocket, getUserSocket, deleteUserSocket } from "../controllers/userSocketController";

/**
 * Middleware to authenticate the socket connection.
 * It verifies the token passed in the handshake query.
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
 * It handles various socket events like 'register', 'fetch_conversations', 'read', 'typing', 'stop typing', 'message sent', 'message received', 'delete message', 'delete conversation', and 'disconnect'.
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
            queue.forEach((message) => {
                socket.emit('message received', message);
            });
        });

        /**
         * Event listener for 'fetch_conversations' event.
         * It fetches all the conversations of a user and emits 'conversations fetched' event.
         */
        socket.on('fetch_conversations', async (userId) => {
            console.log('fetch_conversations', userId);
            try {
                const conversations = await getConversations(userId);
                socket.emit('conversations fetched', conversations);
            } catch (error) {
                console.error('Error fetching conversations:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error fetching conversations');
            }
        });

        /**
         * Event listener for 'fetch_user_list' event.
         * It fetches all the users of the application and emits 'user list fetched' event.
         */
        socket.on('fetch_user_list', async ({userId}) => {
            console.log('fetch_user_list', userId);
            try {
                const users = await getAvailableUsers(userId);
                socket.emit('user list fetched', users);
            } catch (error) {
                console.error('Error fetching user list:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error fetching user list');
            }
        });

        /**
         * Event listener for 'read' event.
         * It marks a message as read in the database and emits 'read' event to all users in the conversation.
         */
        socket.on('read', async ({readerId, messageId}) => {
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
                            socket.to(userSocket.socketId).emit('read', messageId);
                        }
                    }
                }
            } catch (error) {
                console.error('Error marking message as read:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error marking message as read');
            }
        });

        /**
         * Event listener for 'typing' event.
         * It emits 'typing' event to the recipient.
         */
        socket.on('typing', async ({senderId, recipientId}) => {
            const recipientSocket = await getUserSocket(recipientId);
            if (recipientSocket) {
                socket.to(recipientSocket.socketId).emit('typing', senderId);
            }
        });

        /**
         * Event listener for 'stop typing' event.
         * It emits 'stop typing' event to the recipient.
         */
        socket.on('stop typing', async ({senderId, recipientId}) => {
            const recipientSocket = await getUserSocket(recipientId);
            if (recipientSocket) {
                socket.to(recipientSocket.socketId).emit('stop typing', senderId);
            }
        });

        /**
         * Event listener for 'message sent' event.
         * It stores the message in the database and emits 'message received' event to all users in the conversation.
         */
        socket.on('message sent', async ({senderId, conversationId, message, type, fileId}) => {
            try {
                // Store the message in the database
                const savedMessage = await sendMessage({senderId, conversationId, text: message, type, fileId});

                // Emit the message to all users in the conversation
                const conversation = await getConversation(conversationId);

                // If the conversation exists, emit a 'message received' event to all users in the conversation
                if (conversation) {
                    for (const user of conversation.Users) {
                        const userSocketId = await getUserSocket(user.uid);
                        if (userSocketId) {
                            socket.to(userSocketId.socketId).emit('message received', savedMessage);
                        }
                    }
                }
            } catch (error) {
                console.error('Error sending message:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error sending message');
            }
        });

        /**
         * Event Handler for 'message received'
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
        socket.on('message received', async (messageId) => {
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
                }
            } catch (error) {
                console.error('Error receiving message:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error receiving message');
            }
        });

        /**
         * Local Event Handler for 'message received'
         *
         * This event is triggered by the controller when a message is received from a user. The handler does the following:
         *
         * 1. Fetches the conversation associated with the message.
         * 2. If the conversation exists, it emits a 'message received' event to all users in the conversation.
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
                            socket.to(userSocket.socketId).emit('message received', message);
                        } else {
                            // If the user is not connected, add the message to their queue
                            await queueMessage(message);
                        }
                    }
                }
            } catch (error) {
                console.error('Error receiving message:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error receiving message');
            }
        });

        /**
         * Event listener for 'delete message' event.
         * It deletes the message from the database and emits 'message deleted' event to all users in the conversation.
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
                                socket.to(userSocket.socketId).emit('message deleted', messageId);
                            }
                        }
                    }
                }
            } catch (error) {
                console.error('Error deleting message:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error deleting message');
            }
        });

        /**
         * Event listener for 'delete conversation' event.
         * It deletes the conversation from the database and emits 'conversation deleted' event to all users in the conversation.
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
            } catch (error) {
                console.error('Error deleting conversation:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error deleting conversation');
            }
        });

        /**
         * Event listener for 'disconnect' event.
         * It removes the disconnected user from the map.
         */
        socket.on('disconnect', async () => {
            console.log('user disconnected', socket.id);
            // Remove the disconnected user from the map
            await deleteUserSocket(socket.id);
        });

        /**
         * Event listener for 'error' event.
         * It logs the error and emits 'error' event to the client.
         */
        eventEmitter.on('error', ({error, details}) => {
            console.error(error, details);
            socket.emit('error', error);
        });
    });

export { io };