// models/index.ts
import User from './User';
import File from './File';
import Message from './Message';

// Associations for User
// ---------------------

// User-File Associations
User.hasMany(File, {
    foreignKey: 'user_uid',
    sourceKey: 'uid',
    as: 'files'
});
File.belongsTo(User, {
    foreignKey: 'user_uid',
    targetKey: 'uid',
    as: 'user'
});


// User-Message Associations
User.hasMany(Message, {
    foreignKey: 'senderId',
    as: 'sentMessages'
});
Message.belongsTo(User, {
    foreignKey: 'senderId',
    as: 'sender'
});


// Associations for Message
// ------------------------

// Message-File Associations
Message.hasOne(File, {
    foreignKey: 'messageId',
    as: 'attachment'
});
File.belongsTo(Message, {
    foreignKey: 'messageId',
    as: 'message'
});


// Export the models
// -----------------
export { User, File, Message, };
