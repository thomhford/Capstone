// models/index.ts
import {Sequelize} from 'sequelize';
import sequelizeDefaultInstance from '../config/db';
import { createUserModel } from './User';
import { createFileModel } from "./File";
import { createMessageModel } from "./Message";
import { createPostModel } from "./Post";

export function initializeModelsAndAssociations(sequelize: Sequelize) {
    // Assuming you have instances of your models
    const User = createUserModel(sequelize);
    const Message = createMessageModel(sequelize);
    const Post = createPostModel(sequelize);
    const File = createFileModel(sequelize);

    // User to Message associations
    User.hasMany(Message, { as: 'SentMessages', foreignKey: 'senderId', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    User.hasMany(Message, { as: 'ReceivedMessages', foreignKey: 'receiverId', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Message.belongsTo(User, { as: 'Sender', foreignKey: 'senderId', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Message.belongsTo(User, { as: 'Receiver', foreignKey: 'receiverId', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });

    // User to Post association
    User.hasMany(Post, { foreignKey: 'userId', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Post.belongsTo(User, { foreignKey: 'userId', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });

    // Message to File association
    Message.hasMany(File, { as: 'Attachments', foreignKey: 'messageId', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    File.belongsTo(Message, { as: 'Message', foreignKey: 'messageId', onDelete: 'SET NULL', onUpdate: 'CASCADE' });

    // Post to File association
    Post.hasMany(File, { as: 'Files', foreignKey: 'postId', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    File.belongsTo(Post, { as: 'Post', foreignKey: 'postId', onDelete: 'SET NULL', onUpdate: 'CASCADE' });

    return {
        User,
        File,
        Message,
        Post,
    }
}

// Initialize models and associations with the default database instance for export where needed
const { User, File, Message,
    Post } = initializeModelsAndAssociations(sequelizeDefaultInstance);
export { User, File, Message, Post };

// Export the function for custom initialization (e.g., for testing)
export default initializeModelsAndAssociations;