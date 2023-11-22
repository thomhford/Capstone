// socket.ts
import { io } from '../index';
import {
    sendMessage,
    getConversations,
    deleteMessage,
    getMessage,
    getConversation,
    deleteConversation
} from '../controllers/conversationController';
import { MessageInstance } from "../models/Message";
import { eventEmitter } from "./events";
import admin from 'firebase-admin';

// Map of user IDs to socket IDs
const users = new Map();

// Map of user IDs to message queues
const messageQueues = new Map();

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

io.on('connection',
    (socket) => {
        console.log('a user connected', socket.id);

        // When a user connects, they should emit a 'register' event with their user ID
        socket.on('register', (userId) => {
            users.set(userId, socket.id);

            // Send all the messages in the user's queue
            const queue = messageQueues.get(userId) || [];
            queue.forEach((message: MessageInstance) => {
                socket.emit('message received', message);
            });

            // Clear the user's queue
            messageQueues.set(userId, []);
        });

        // Handle 'fetch_conversations' event
        socket.on('fetch_conversations', async ({userId}) => {
            try {
                const conversations = await getConversations(userId);
                socket.emit('conversations fetched', conversations);
            } catch (error) {
                console.error('Error fetching conversations:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error fetching conversations');
            }
        });

        // Handle 'read' event
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
                    [conversation.user1Id, conversation.user2Id].forEach(userId => {
                        const userSocketId = users.get(userId);
                        if (userSocketId) {
                            socket.to(userSocketId).emit('read', messageId);
                        }
                    });
                }
            } catch (error) {
                console.error('Error marking message as read:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error marking message as read');
            }
        });

        // Handle 'typing' event
        socket.on('typing', ({senderId, recipientId}) => {
            const recipientSocketId = users.get(recipientId);
            if (recipientSocketId) {
                socket.to(recipientSocketId).emit('typing', senderId);
            }
        });

        // Handle 'stop typing' event
        socket.on('stop typing', ({senderId, recipientId}) => {
            const recipientSocketId = users.get(recipientId);
            if (recipientSocketId) {
                socket.to(recipientSocketId).emit('stop typing', senderId);
            }
        });

        // Handle 'message sent' event
        socket.on('message sent', async ({senderId, conversationId, message, type, fileId}) => {
            try {
                // Store the message in the database
                const savedMessage = await sendMessage({senderId, conversationId, text: message, type, fileId});

                // Emit the message to all users in the conversation
                const conversation = await getConversation(conversationId);

                // If the conversation exists, emit a 'message received' event to all users in the conversation
                if (conversation) {
                    conversation.Users.forEach(user => {
                        const userSocketId = users.get(user.uid);
                        if (userSocketId) {
                            socket.to(userSocketId).emit('message received', savedMessage);
                        }
                    });
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
                        conversation.Users.forEach(user => {
                            const userSocketId = users.get(user.uid);
                            if (userSocketId) {
                                socket.to(userSocketId).emit('message received', messageId);
                            }
                        });
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
                    conversation.Users.forEach(user => {
                        const userSocketId = users.get(user.uid);
                        if (userSocketId) {
                            socket.to(userSocketId).emit('message received', message);
                        } else {
                            // If the user is not connected, add the message to their queue
                            const queue = messageQueues.get(user.uid) || [];
                            queue.push(message);
                            messageQueues.set(user.uid, queue);
                        }
                    });
                }
            } catch (error) {
                console.error('Error receiving message:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error receiving message');
            }
        });

        // Handle 'delete message' event
        socket.on('delete message', async (messageId) => {
            try {
                // Delete the message from the database and get the deleted message
                const message = await deleteMessage(messageId);

                // If the message exists, emit a 'message deleted' event to all users in the conversation
                if (message) {
                    const conversation = await getConversation(message.conversationId);
                    if (conversation) {
                        conversation.Users.forEach(user => {
                            const userSocketId = users.get(user.uid);
                            if (userSocketId) {
                                socket.to(userSocketId).emit('message deleted', messageId);
                            }
                        });
                    }
                }
            } catch (error) {
                console.error('Error deleting message:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error deleting message');
            }
        });

        // Handle 'delete conversation' event
        socket.on('delete conversation', async (conversationId) => {
            try {
                // Delete the conversation from the database and get the deleted conversation
                const conversation = await deleteConversation(conversationId);

                // If the conversation exists, emit a 'conversation deleted' event to all users in the conversation
                if (conversation) {
                    [conversation.user1Id, conversation.user2Id].forEach(userId => {
                        const userSocketId = users.get(userId);
                        if (userSocketId) {
                            socket.to(userSocketId).emit('conversation deleted', conversationId);
                        }
                    });
                }
            } catch (error) {
                console.error('Error deleting conversation:', error);
                // Emit an error event to the client
                socket.emit('error', 'Error deleting conversation');
            }
        });

        socket.on('disconnect', () => {
            console.log('user disconnected', socket.id);
            // Remove the disconnected user from the map
            for (const [userId, socketId] of users.entries()) {
                if (socketId === socket.id) {
                    users.delete(userId);
                    break;
                }
            }
        });

        eventEmitter.on('error', ({error, details}) => {
            console.error(error, details);
            socket.emit('error', error);
        });
    });

export { io };