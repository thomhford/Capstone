// models/UserSocket.ts
import { DataTypes, Model, Sequelize } from 'sequelize';

interface UserSocketAttributes {
    userId: string;
    socketId: string;
}

export interface UserSocketInstance extends Model<UserSocketAttributes>, UserSocketAttributes {}

export const createUserSocketModel = (sequelize: Sequelize) => sequelize.define<UserSocketInstance>('UserSocket', {
    userId: {
        type: DataTypes.STRING,
        allowNull: false,
        primaryKey: true
    },
    socketId: {
        type: DataTypes.STRING,
        allowNull: false,
    },
}, {
    timestamps: true,
});