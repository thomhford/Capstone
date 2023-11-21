// socket.ts
import { io } from '../index';
import { sendMessage, getMessages, deleteMessage } from '../controllers/messageController';
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

io.on('connection', (socket) => {
    console.log('a user connected', socket.id);

    // When a user connects, they should emit a 'register' event with their user ID
    socket.on('register', (userId) => {
        users.set(userId, socket.id);

        // Send all the messages in the user's queue
        const queue = messageQueues.get(userId) || [];
        queue.forEach((message:MessageInstance) => {
            socket.emit('message received', message);
        });

        // Clear the user's queue
        messageQueues.set(userId, []);
    });

    // Handle 'read' event
    socket.on('read', async ({ readerId, messageId }) => {
        try {
            // Mark the message as read in the database
            const message = await getMessages(messageId);
            if (message && message.receiverId === readerId) {
                message.read = true;
                await message.save();

                // Emit a 'read' event to the sender
                const senderSocketId = users.get(message.senderId);
                if (senderSocketId) {
                    socket.to(senderSocketId).emit('read', messageId);
                }
            }
        } catch (error) {
            console.error('Error marking message as read:', error);
            // Emit an error event to the client
            socket.emit('error', 'Error marking message as read');
        }
    });

    // Handle 'typing' event
    socket.on('typing', ({ senderId, recipientId }) => {
        const recipientSocketId = users.get(recipientId);
        if (recipientSocketId) {
            socket.to(recipientSocketId).emit('typing', senderId);
        }
    });

    // Handle 'stop typing' event
    socket.on('stop typing', ({ senderId, recipientId }) => {
        const recipientSocketId = users.get(recipientId);
        if (recipientSocketId) {
            socket.to(recipientSocketId).emit('stop typing', senderId);
        }
    });

    // Handle 'message sent' event
    socket.on('message sent', async ({ senderId, recipientId, message, type, fileId }) => {
        try {
            console.log('sending message to: ', recipientId);
            // Store the message in the database
            const savedMessage = await sendMessage({ senderId, receiverId: recipientId, text: message, type, fileId });

            // If the recipient is connected, send the message immediately
            const recipientSocketId = users.get(recipientId);
            if (recipientSocketId) {
                socket.to(recipientSocketId).emit('message received', savedMessage);
            } else {
                // If the recipient is not connected, add the message to their queue
                const queue = messageQueues.get(recipientId) || [];
                queue.push(savedMessage);
                messageQueues.set(recipientId, queue);
            }
        } catch (error) {
            console.error('Error sending message:', error);
            // Emit an error event to the client
            socket.emit('error', 'Error sending message');
        }
    });

    // Handle 'message received' event
    socket.on('message received', async (messageId) => {
        try {
            // Mark the message as read in the database
            const message = await getMessages(messageId);
            if (message) {
                message.isReceived = true;
                await message.save();
            }
        } catch (error) {
            console.error('Error receiving message:', error);
            // Emit an error event to the client
            socket.emit('error', 'Error receiving message');
        }
    });

    eventEmitter.on('message received', ({ message }) => {
        const recipientSocketId = users.get(message.receiverId);
        if (recipientSocketId) {
            socket.to(recipientSocketId).emit('message received', message);
        } else {
            // If the recipient is not connected, add the message to their queue
            const queue = messageQueues.get(message.receiverId) || [];
            queue.push(message);
            messageQueues.set(message.receiverId, queue);
        }
    });

    // Handle 'delete message' event
    socket.on('delete message', async (messageId) => {
        try {
            // Delete the message from the database and get the deleted message
            const message = await deleteMessage(messageId);

            // If the message exists, emit a 'message deleted' event to both the sender and the recipient
            if (message) {
                const senderSocketId = users.get(message.senderId);
                const recipientSocketId = users.get(message.receiverId);
                if (senderSocketId) {
                    socket.to(senderSocketId).emit('message deleted', messageId);
                }
                if (recipientSocketId) {
                    socket.to(recipientSocketId).emit('message deleted', messageId);
                }
            }
        } catch (error) {
            console.error('Error deleting message:', error);
            // Emit an error event to the client
            socket.emit('error', 'Error deleting message');
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
});

export { io };