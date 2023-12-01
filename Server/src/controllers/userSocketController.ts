// controllers/userSocketController.ts
import { UserSocket } from '../models';
import { eventEmitter } from '../config/events';

/**
 * createUserSocket - This method is used to create or update a UserSocket instance.
 * If a UserSocket instance with the provided userId exists, it updates the socketId of the existing instance.
 * If it doesn't exist, it creates a new UserSocket instance with the provided userId and socketId.
 *
 * @param {string} userId - The ID of the user.
 * @param {string} socketId - The ID of the socket.
 * @throws eventEmitter Will throw an error if the operation fails.
 */
export const createUserSocket = async (userId: string, socketId: string) => {
    try {
        const [userSocket, created] = await UserSocket.findOrCreate({
            where: { userId },
            defaults: { userId, socketId }
        });

        if (!created) {
            userSocket.socketId = socketId;
            await userSocket.save();
        }
    } catch (error) {
        console.error(`Error in createUserSocket: ${error}`);
        eventEmitter.emit('error', { error: 'Error creating user socket', details: error });
    }
};

/**
 * deleteUserSocket - This method is used to delete a UserSocket instance.
 * It finds a UserSocket instance with the provided socketId and deletes it if it exists.
 *
 * @param {string} socketId - The ID of the socket.
 * @throws eventEmitter Will throw an error if the operation fails.
 */
export const deleteUserSocket = async (socketId: string) => {
    try {
        const userSocket = await UserSocket.findOne({where: {socketId}});
        if (userSocket) {
            await userSocket.destroy();
        }
    } catch (error) {
        console.error(`Error in deleteUserSocket: ${error}`);
        eventEmitter.emit('error', { error: 'Error deleting user socket', details: error });
    }
};

/**
 * getUserSocket - This method is used to get a UserSocket instance.
 * It finds a UserSocket instance with the provided userId and returns it.
 *
 * @param {string} userId - The ID of the user.
 * @returns {Promise<UserSocket | null>} The UserSocket instance if found, null otherwise.
 * @throws eventEmitter Will throw an error if the operation fails.
 */
export const getUserSocket = async (userId: string) => {
    try {
        return await UserSocket.findOne({where: {userId}});
    } catch (error) {
        console.error(`Error in getUserSocket: ${error}`);
        eventEmitter.emit('error', { error: 'Error getting user socket', details: error });
    }
};