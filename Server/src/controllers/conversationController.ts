// controllers/conversationController.ts
import {File as Attachment, Message, Conversation, User} from '../models';
import sequelize from "../config/db";
import { Op } from "sequelize";
import { eventEmitter } from '../config/events';

// Function to send a message with possible attachments
interface SendMessageParams {
    senderId: string;
    conversationId: number;
    text: string;
    type: string;
    fileId?: number;
}
export const sendMessage = async ({ senderId, conversationId, text, type, fileId }:SendMessageParams) => {
    if (!conversationId || !text || !type) {
        throw new Error('Conversation ID, text, and type are required.');
    }

    try {
        // Begin a transaction to ensure both Message and File are saved correctly returns the message if successful
        return await sequelize.transaction(async (t) => {
            const message = await Message.create({
                message: text,
                type,
                conversationId,
                status: 'sent'
            }, {transaction: t});

            // Associate the message with the sender
            const sender = await User.findOne({ where: { uid: senderId } });
            if (sender) {
                message.setSender(sender, { transaction: t });
            }

            // If type indicates an attachment and fileId is provided, associate the file with the message
            if (type !== 'text' && fileId) {
                const attachment = await Attachment.findOne({
                    where: {id: fileId, owner_uid: senderId}, // Ensuring the attachment belongs to the sender
                    transaction: t
                });

                if (!attachment) {
                    throw new Error('File not found or does not belong to the sender');
                }

                // Associate the message with the attachment
                await attachment.update({messageId: message.message_id}, {transaction: t});
            }

            await message.save({ transaction: t });

            // Emit a 'message received' event to the receiver
            eventEmitter.emit('message received', { message });

            return message; // Return the message as the result of the transaction
        });

    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error sending message', details: error });
    }
};

// Function to update the status of a message
export const queueMessage = async (messageId: number) => {
    const message = await Message.findOne({ where: { message_id: messageId } });
    if (message) {
        message.status = 'queued';
        await message.save();
    }
};

// Function to deliver queued messages
export const deliverQueuedMessages = async (userId: string) => {
    const messages = await Message.findAll({
        where: {
            status: 'queued',
            '$Conversation.user1Id$': userId,
            '$Conversation.user2Id$': userId
        },
        include: [{
            model: Conversation,
            as: 'Conversation',
            attributes: ['user1Id', 'user2Id']
        }]
    });
    for (const message of messages) {
        message.status = 'delivered';
        await message.save();
    }
    return messages;
};

// Function to retrieve conversations
export const getConversations = async (userId: number) => {
    try {
        return await Conversation.findAll({
            where: {
                [Op.or]: [
                    {user1Id: userId},
                    {user2Id: userId}
                ]
            },
            include: ['User1', 'User2', 'Messages']
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error retrieving conversations', details: error });
    }
};

// Function to retrieve a single conversation
export const getConversation = async (conversationId: number) => {
    try {
        return await Conversation.findOne({
            where: {conversation_id: conversationId},
            include: ['User1', 'User2', 'Messages', {
                model: User,
                as: 'Users',
                through: {attributes: []} // This will exclude the attributes of the join table
            }]
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error retrieving conversation', details: error });
    }
};

// Function to retrieve a single message for updating the read status
export const getMessage = async (messageId: number) => {
    try {
        // Retrieve the message with the given messageId
        return await Message.findOne({
            where: {message_id: messageId}
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error retrieving message', details: error });
    }
};

// Function to delete a message
export const deleteMessage = async (messageId: number) => {
    try {
        // Find the message with the given messageId
        const message = await Message.findOne({
            where: { message_id: messageId }
        });

        // If the message exists, delete it and return the message
        if (message) {
            await message.destroy();
            return message;
        }
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error deleting message', details: error });
    }
};

// Function to retrieve messages for a conversation
export const getMessages = async (conversationId: number) => {
    try {
        // Retrieve the messages with the given conversationId
        return await Message.findAll({
            where: {conversationId},
            include: ['Sender', 'Attachments']
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error retrieving messages', details: error });
    }
};

// Function to delete a conversation
export const deleteConversation = async (conversationId: number) => {
    try {
        // Find the conversation with the given conversationId
        const conversation = await Conversation.findOne({
            where: { conversation_id: conversationId }
        });

        // If the conversation exists, delete it and return the conversation
        if (conversation) {
            await conversation.destroy();
            return conversation;
        }
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error deleting conversation', details: error });
    }
};