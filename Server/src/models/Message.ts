// models/Message.ts
import { DataTypes } from 'sequelize';
import sequelize from '../config/db';

const Message = sequelize.define('Message', {
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
