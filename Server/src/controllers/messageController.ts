// controllers/messageController.ts
import {File as Attachment, Message} from '../models';
import sequelize from "../config/db";

// Function to send a message with possible attachments
interface SendMessageParams {
    senderId: string;
    receiverId: string;
    text: string;
    type: string;
    fileId?: number;
}
export const sendMessage = async ({ senderId, receiverId, text, type, fileId }:SendMessageParams) => {
    if (!receiverId || !text || !type) {
        throw new Error('Receiver ID, text, and type are required.');
    }

    try {
        // Begin a transaction to ensure both Message and File are saved correctly returns the message if successful
        return await sequelize.transaction(async (t) => {
            const message = await Message.create({
                senderId,
                receiverId,
                message: text,
                isRead: false,
                isReceived: false,
                type
            }, {transaction: t});

            // If type indicates an attachment and fileId is provided, associate the file with the message
            if (type !== 'text' && fileId) {
                const file = await Attachment.findOne({
                    where: {id: fileId, user_uid: senderId}, // Ensuring the file belongs to the sender
                    transaction: t
                });

                if (!file) {
                    throw new Error('File not found or does not belong to the sender');
                }

                // Associate the message with the file
                await file.update({messageId: message.id}, {transaction: t});
            }

            return message; // Return the message as the result of the transaction
        });

    } catch (error) {
        console.error(error);
        throw error;
    }
};

// Function to retrieve messages
export const getMessages = async (messageId: number) => {
    try {
        // Retrieve the message with the given messageId
        return await Message.findOne({
            where: {id: messageId}
        });
    } catch (error) {
        console.error(error);
        throw error;
    }
};

// Function to delete a message
export const deleteMessage = async (messageId: number) => {
    try {
        // Find the message with the given messageId
        const message = await Message.findOne({
            where: { id: messageId }
        });

        // If the message exists, delete it and return the message
        if (message) {
            await message.destroy();
            return message;
        }
    } catch (error) {
        console.error(error);
        throw error;
    }
};