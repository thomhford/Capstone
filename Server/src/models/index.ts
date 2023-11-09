// models/index.ts
import {Sequelize} from 'sequelize';
import sequelizeDefaultInstance from '../config/db';
import { createUserModel } from './User';
import { createFileModel } from "./File";
import { createMessageModel } from "./Message";

export function initializeModelsAndAssociations(sequelize: Sequelize) {
    const User = createUserModel(sequelize);
    const File = createFileModel(sequelize);
    const Message = createMessageModel(sequelize);

    // User-File Associations
    User.hasMany(File, {
        foreignKey: 'user_uid',
        sourceKey: 'uid',
        as: 'files',
        onDelete: 'CASCADE'
    });
    File.belongsTo(User, {
        foreignKey: 'user_uid',
        targetKey: 'uid',
        as: 'user',
        onDelete: 'SET NULL'
    });


    // Sender-Message Associations
    User.hasMany(Message, {
        foreignKey: 'senderId',
        sourceKey: 'uid',
        as: 'sentMessages',
        onDelete: 'CASCADE'
    });
    Message.belongsTo(User, {
        foreignKey: 'senderId',
        targetKey: 'uid',
        as: 'sender',
        onDelete: 'SET NULL'
    });

    // Receiver-Message Associations
    User.hasMany(Message, {
        foreignKey: 'receiverId',
        sourceKey: 'uid',
        as: 'receivedMessages',
        onDelete: 'CASCADE'
    });
    Message.belongsTo(User, {
        foreignKey: 'receiverId',
        targetKey: 'uid',
        as: 'receiver',
        onDelete: 'SET NULL'
    });


    // Message-File Associations
    Message.hasOne(File, {
        foreignKey: 'messageId',
        sourceKey: 'id',
        as: 'attachment',
        onDelete: 'CASCADE'
    });
    File.belongsTo(Message, {
        foreignKey: 'messageId',
        targetKey: 'id',
        as: 'message',
        onDelete: 'SET NULL'
    });

    return {
        User,
        File,
        Message,
    }
}

// Initialize models and associations with the default database instance for export where needed
const { User, File, Message } = initializeModelsAndAssociations(sequelizeDefaultInstance);
export { User, File, Message };

// Export the function for custom initialization (e.g., for testing)
export default initializeModelsAndAssociations;
