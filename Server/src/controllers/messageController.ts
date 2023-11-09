// controllers/messageController.ts
import { Request, Response } from 'express';
import { Message, File as Attachment } from '../models';
import {Op} from "sequelize";
import { getUserId } from '../utils/authUtils';
import sequelize from "../config/db";

// Function to send a message with possible attachments
export const sendMessage = async (req: Request, res: Response) => {
    const { receiverId, text, type, fileId } = req.body; // fileId would be the identifier for the attachment if it exists
    const senderId = await getUserId(req);

    if (!receiverId || !text || !type) {
        return res.status(400).json({ message: 'Receiver ID, text, and type are required.' });
    }

    try {
        // Begin a transaction to ensure both Message and File are saved correctly
        const result = await sequelize.transaction(async (t) => {
            const message = await Message.create({
                senderId,
                receiverId,
                message: text,
                isRead: false,
                type
            }, { transaction: t });

            // If type indicates an attachment and fileId is provided, associate the file with the message
            if (type !== 'text' && fileId) {
                const file = await Attachment.findOne({
                    where: { id: fileId, user_uid: senderId }, // Ensuring the file belongs to the sender
                    transaction: t
                });

                if (!file) {
                    throw new Error('File not found or does not belong to the sender');
                }

                // Associate the message with the file
                await file.update({ messageId: message.id }, { transaction: t });
            }

            // Add Firebase Cloud Messaging (FCM) to notify the receiver here when I get to it
            // ...

            return message; // Return the message as the result of the transaction
        });

        // If the transaction was successful, result holds the message
        return res.status(201).json({ message: 'Message sent successfully.', data: result });

    } catch (error: unknown) {
        if (error instanceof Error) {
            console.error(error);
            return res.status(500).json({ message: 'Internal server error', error: error.message });
        } else {
            // If it's not an Error, handle or log it appropriately
            console.error("An unexpected error occurred", error);
            return res.status(500).json({ message: 'Internal server error' });
        }
    }
};

// Function to retrieve messages
export const getMessages = async (req: Request, res: Response) => {
    const { conversationPartnerId } = req.query as { conversationPartnerId: string };
    const userId = await getUserId(req);

    try {
        // Retrieve messages where the authenticated user is either the sender or receiver
        const messages = await Message.findAll({
            where: {
                [Op.or]: [
                    { senderId: userId, receiverId: conversationPartnerId },
                    { senderId: conversationPartnerId, receiverId: userId }
                ]
            },
            order: [['createdAt', 'ASC']]
        });

        return res.status(200).json({ messages });
    } catch (error: unknown) {
        if (error instanceof Error) {
            console.error(error);
            return res.status(500).json({ message: 'Internal server error', error: error.message });
        } else {
            // If it's not an Error, handle or log it appropriately
            console.error("An unexpected error occurred", error);
            return res.status(500).json({ message: 'Internal server error' });
        }
    }
};