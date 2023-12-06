// models/index.ts
import {Sequelize} from 'sequelize';
import sequelizeDefaultInstance from '../config/db';
import { createUserModel } from './User';
import { createFileModel } from "./File";
import { createMessageModel } from "./Message";
import { createPostModel } from "./Post";
import { createConversationModel } from "./Conversation";
import { createUserSocketModel } from "./UserSocket";
import {createUserConversationModel} from "./UserConservation";

export function initializeModelsAndAssociations(sequelize: Sequelize) {
    const User = createUserModel(sequelize);
    const Message = createMessageModel(sequelize);
    const Post = createPostModel(sequelize);
    const File = createFileModel(sequelize);
    const Conversation = createConversationModel(sequelize);
    const UserSocket = createUserSocketModel(sequelize);
    const UserConversation = createUserConversationModel(sequelize);

    // User to Conversation associations
    User.hasMany(Conversation, { as: 'User1Conversations', foreignKey: 'user1Id', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    User.hasMany(Conversation, { as: 'User2Conversations', foreignKey: 'user2Id', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Conversation.belongsTo(User, { as: 'User1', foreignKey: 'user1Id', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Conversation.belongsTo(User, { as: 'User2', foreignKey: 'user2Id', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    User.belongsToMany(Conversation, { through: 'UserConversations', as: 'Conversations' });
    Conversation.belongsToMany(User, { through: 'UserConversations', as: 'Users' });

    // User to Message associations
    User.hasMany(Message, { as: 'SentMessages', foreignKey: 'authorId', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Message.belongsTo(User, { as: 'Author', foreignKey: 'authorId', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });

    // User to Post association
    User.hasMany(Post, { foreignKey: 'userId', sourceKey : 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Post.belongsTo(User, { foreignKey: 'userId', targetKey: 'uid', onDelete: 'CASCADE', onUpdate: 'CASCADE' });

    // User to File association
    User.hasMany(File, { foreignKey: 'owner_uid', sourceKey: 'uid' });
    File.belongsTo(User, { foreignKey: 'owner_uid', targetKey: 'uid' });

    // Message to File association
    Message.hasMany(File, { as: 'Attachments', foreignKey: 'messageId', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    File.belongsTo(Message, { as: 'Message', foreignKey: 'messageId', onDelete: 'SET NULL', onUpdate: 'CASCADE' });

    // Post to File association
    Post.hasMany(File, { as: 'Files', foreignKey: 'postId', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    File.belongsTo(Post, { as: 'Post', foreignKey: 'postId', onDelete: 'SET NULL', onUpdate: 'CASCADE' });

    // Conversation to Message association
    Conversation.hasMany(Message, { as: 'Messages', foreignKey: 'conversationId', onDelete: 'CASCADE', onUpdate: 'CASCADE' });
    Message.belongsTo(Conversation, { as: 'Conversation', foreignKey: 'conversationId', onDelete: 'CASCADE', onUpdate: 'CASCADE' });


    return {
        User,
        File,
        Message,
        Post,
        Conversation,
        UserSocket
    }
}

// Initialize models and associations with the default database instance for export where needed
const { User, File, Message,
    Post, Conversation, UserSocket } = initializeModelsAndAssociations(sequelizeDefaultInstance);
export { User, File, Message, Post, Conversation, UserSocket };

// Export the function for custom initialization (e.g., for testing)
export default initializeModelsAndAssociations;