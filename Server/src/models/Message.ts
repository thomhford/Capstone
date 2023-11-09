// models/Message.ts
import { DataTypes, Model, Sequelize } from 'sequelize';

interface MessageAttributes {
    senderId: number;
    message: string;
    isRead: boolean;
    type: string;
}

interface MessageInstance extends Model<MessageAttributes>, MessageAttributes {}

export const createMessageModel = (sequelize: Sequelize) => sequelize.define<MessageInstance>('Message', {
    senderId: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    message: {
        type: DataTypes.TEXT,
        allowNull: false,
    },
    isRead: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
        defaultValue: false,
    },
    type: {
        type: DataTypes.STRING,
        allowNull: false,
        defaultValue: 'text', // 'text', 'image', 'file', etc.
    },
}, {
    timestamps: true,
    paranoid: true,
});

// Allow for test database but use the real database connection by default
const sequelize = require('../config/db').default;
export default createMessageModel(sequelize);
