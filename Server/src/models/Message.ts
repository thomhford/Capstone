// models/Message.ts
import { DataTypes, Model } from 'sequelize';
import sequelize from '../config/db';

interface MessageAttributes {
    senderId: number;
    message: string;
    isRead: boolean;
    type: string;
}

interface MessageInstance extends Model<MessageAttributes>, MessageAttributes {}

const Message = sequelize.define<MessageInstance>('Message', {
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

export default Message;
