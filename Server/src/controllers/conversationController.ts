// controllers/conversationController.ts
import {Conversation, File as Attachment, Message, User} from '../models';
import sequelize from "../config/db";
import {Op} from "sequelize";
import {eventEmitter} from '../config/events';
import {ConversationInstance} from "../models/Conversation";

/**
 * Parameters for the sendMessage function.
 *
 * @typedef {Object} SendMessageParams
 *
 * @property {string} senderId - The ID of the user sending the message.
 * @property {number} conversationId - The ID of the conversation the message is part of.
 * @property {string} text - The text of the message.
 * @property {string} type - The type of the message ('text' or 'file').
 * @property {number} [fileId] - The ID of the file attached to the message (if any). This is optional.
 */
interface SendMessageParams {
    senderId: string;
    conversationId: number;
    text: string;
    type: string;
    fileId?: number;
}
/**
 * Function to send a message with possible attachments.
 *
 * This function does the following:
 * 1. Validates the input parameters.
 * 2. Begins a transaction to ensure both Message and File are saved correctly.
 * 3. Creates a new message in the database with the provided details.
 * 4. Associates the message with the sender.
 * 5. If the message type indicates an attachment and a fileId is provided, it associates the file with the message.
 * 6. Saves the message in the database.
 * 7. Emits a 'message received' event to the receiver.
 * 8. Returns the message as the result of the transaction.
 *
 * @param {Object} params - The parameters for sending a message.
 * @param {string} params.senderId - The ID of the user sending the message.
 * @param {number} params.conversationId - The ID of the conversation the message is part of.
 * @param {string} params.text - The text of the message.
 * @param {string} params.type - The type of the message ('text' or 'file').
 * @param {number} [params.fileId] - The ID of the file attached to the message (if any).
 *
 * @throws Will throw an error if there's an issue creating the message, associating the sender or file, or saving the message.
 */
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

/**
 * Function to create a new conversation between two users.
 *
 * This function does the following:
 * 1. Creates a new Conversation instance in the database with the provided details.
 * 2. Returns the created conversation.
 *
 * @param {string} user1Id - The ID of the first user.
 * @param {string} user2Id - The ID of the second user.
 *
 * @returns {Promise<ConversationInstance>} The created conversation.
 *
 * @throws Will throw an error if there's an issue creating the conversation.
 */
export const createConversation = async (user1Id: string, user2Id: string) => {
    try {
        // Check if a conversation between the two users already exists
        const existingConversation = await Conversation.findOne({
            where: {
                [Op.or]: [
                    { user1Id: user1Id, user2Id: user2Id },
                    { user1Id: user2Id, user2Id: user1Id }
                ]
            }
        });

        // If a conversation already exists, throw an error
        if (existingConversation) {
            console.error('A conversation between these two users already exists.');
            return null;
        }

        // If no conversation exists, create a new one
        return await Conversation.create({
            user1Id,
            user2Id
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error creating conversation', details: error });
    }
};

/**
 * Function to update the status of a message to 'queued'.
 *
 * This function does the following:
 * 1. Fetches the message with the given message ID from the database.
 * 2. If the message exists, it updates the status of the message to 'queued'.
 * 3. Saves the updated message in the database.
 *
 * @param {number} messageId - The ID of the message to be queued.
 *
 * @throws Will throw an error if there's an issue fetching the message or updating its status.
 */
export const queueMessage = async (messageId: number) => {
    const message = await Message.findOne({ where: { message_id: messageId } });
    if (message) {
        message.status = 'queued';
        await message.save();
    }
};

/**
 * Function to deliver queued messages for a user.
 *
 * This function does the following:
 * 1. Fetches all messages with the status 'queued' that belong to conversations involving the user.
 * 2. For each fetched message, it updates the status of the message to 'delivered'.
 * 3. Saves the updated message in the database.
 * 4. Returns the updated messages.
 *
 * @param {string} userId - The ID of the user to deliver queued messages to.
 *
 * @returns {Promise<MessageInstance[]>} An array of the delivered messages.
 *
 * @throws Will throw an error if there's an issue fetching the messages, updating their status, or saving the messages.
 */
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

/**
 * Function to retrieve all conversations for a user.
 *
 * This function does the following:
 * 1. Fetches all conversations from the database where the user is either `user1Id` or `user2Id`.
 * 2. Includes the associated 'User1', 'User2', and 'Messages' in the fetched conversations.
 * 3. Returns the fetched conversations.
 *
 * Note: This function currently fetches all conversations for a user without any limit.
 * If a user can have a large number of conversations, consider implementing pagination or some form of limit.
 *
 * @param {number} userId - The ID of the user whose conversations are to be fetched.
 *
 * @returns {Promise<ConversationInstance[]>} An array of the fetched conversations.
 *
 * @throws Will throw an error if there's an issue fetching the conversations from the database.
 */
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

/**
 * Function to retrieve a single conversation.
 *
 * This function does the following:
 * 1. Fetches a conversation from the database with the given conversation ID.
 * 2. Includes the associated 'User1', 'User2', 'Messages', and 'Users' in the fetched conversation.
 * 3. Returns the fetched conversation.
 *
 * @param {number} conversationId - The ID of the conversation to be fetched.
 *
 * @returns {Promise<ConversationInstance | null>} The fetched conversation, or null if no conversation was found with the given ID.
 *
 * @throws Will throw an error if there's an issue fetching the conversation from the database.
 */
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

/**
 * Function to retrieve a list of users that can be part of a new conversation.
 * This excludes the current user and users that are already part of a conversation with the current user.
 *
 * This function does the following:
 * 1. Fetches all users from the database.
 * 2. Excludes the current user and users that are already part of a conversation with the current user.
 * 3. Returns the fetched users.
 *
 * @param {string} userId - The ID of the current user.
 *
 * @returns {Promise<UserInstance[]>} An array of the fetched users.
 *
 * @throws Will throw an error if there's an issue fetching the users from the database.
 */
export const getAvailableUsers = async (userId: string) => {
    try {
        return await User.findAll({
            where: {
                [Op.and]: [
                    {uid: {[Op.ne]: userId}},
                    {
                        [Op.or]: [
                            {uid: {[Op.notIn]: sequelize.literal(`(SELECT user1Id FROM Conversations WHERE user2Id = '${userId}')`)}},
                            {uid: {[Op.notIn]: sequelize.literal(`(SELECT user2Id FROM Conversations WHERE user1Id = '${userId}')`)}}
                        ]
                    }
                ]
            }
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error retrieving available users', details: error });
    }
}

/**
 * Function to retrieve a single message. Used for updating the read status of a message.
 *
 * This function does the following:
 * 1. Fetches a message from the database with the given message ID.
 * 2. Returns the fetched message.
 *
 * @param {number} messageId - The ID of the message to be fetched.
 *
 * @returns {Promise<MessageInstance | null>} The fetched message, or null if no message was found with the given ID.
 *
 * @throws Will throw an error if there's an issue fetching the message from the database.
 */
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
        // Begin a transaction
        return await sequelize.transaction(async (t) => {
            // Find the conversation with the given conversationId
            const conversation = await Conversation.findOne({
                where: { conversation_id: conversationId }
            });

            // If the conversation exists, delete it and its associated messages, then return the conversation
            if (conversation) {
                // Delete the messages associated with the conversation
                await Message.destroy({
                    where: { conversationId: conversation.conversation_id },
                    transaction: t
                });

                // Delete the conversation
                await conversation.destroy({ transaction: t });

                return conversation;
            }
        });
    } catch (error) {
        console.error(error);
        eventEmitter.emit('error', { error: 'Error deleting conversation', details: error });
    }
};