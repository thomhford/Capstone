// models/Conversation.ts

import { DataTypes, Model, Sequelize } from 'sequelize';
import { UserInstance } from "./User";

interface ConversationAttributes {
    conversation_id?: number;
    user1Id: string;
    user2Id: string;
    lastMessageId?: number;
}

export interface ConversationInstance extends Model<ConversationAttributes>, ConversationAttributes {
    Users: UserInstance[];
}

export const createConversationModel = (sequelize: Sequelize) => sequelize.define<ConversationInstance>('Conversation', {
    conversation_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    user1Id: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    user2Id: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    lastMessageId: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
}, {
    timestamps: true,
    paranoid: true,
    indexes: [{ fields: ['user1Id', 'user2Id'] }]
});