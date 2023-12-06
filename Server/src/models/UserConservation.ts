// models/UserConservation.ts

import { DataTypes, Model, Sequelize } from 'sequelize';
import { UserInstance } from "./User";
import { ConversationInstance } from "./Conversation";

interface UserConversationAttributes {
    conversationId: number;
}

export interface UserConversationInstance extends Model<UserConversationAttributes>, UserConversationAttributes {
    User: UserInstance;
    Conversation: ConversationInstance;
}

export const createUserConversationModel = (sequelize: Sequelize) => sequelize.define<UserConversationInstance>('UserConversation', {
    conversationId: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
}, {
    timestamps: true,
    paranoid: true,
    indexes: [{ fields: ['userId', 'conversationId'] }]
});
