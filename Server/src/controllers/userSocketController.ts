// controllers/userSocketController.ts
import { UserSocket } from '../models';

export const createUserSocket = async (userId: string, socketId: string) => {
    const userSocket = await UserSocket.findOne({ where: { userId } });
    if (userSocket) {
        userSocket.socketId = socketId;
        await userSocket.save();
    } else {
        await UserSocket.create({ userId, socketId });
    }
};

export const deleteUserSocket = async (socketId: string) => {
    const userSocket = await UserSocket.findOne({ where: { socketId } });
    if (userSocket) {
        await userSocket.destroy();
    }
};

export const getUserSocket = async (userId: string) => {
    return await UserSocket.findOne({ where: { userId } });
};