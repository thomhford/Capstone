// user.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { User, Message, File, Post } = initializeModelsAndAssociations(testDb);

describe('User Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(User).toBeDefined();
    });

    it('should create a user', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test.test',
            uid: '1234567890'

        });
        expect(user.firstName).toBe('Test');
        expect(user.lastName).toBe('User');
        expect(user.email).toBe('test@test.test');
        expect(user.uid).toBe('1234567890');
    });

    it('should not create a user with invalid email', async () => {
        await expect(User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'not-an-email',
            uid: '1234567890'
        })).rejects.toThrow();
    });

    it('should not create a user with invalid uid', async () => {
        await expect(User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test1.test',
            uid: '1234567890', // matches the uid of the user created above
        })).rejects.toThrow();
    });

    it('should update the user email', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test4.test',
            uid: 'should_update_the_user_email'
        });
        user.email = 'newemail@test.test';
        const updatedUser = await user.save();
        expect(updatedUser.email).toBe('newemail@test.test');
    });

    it('should delete a user', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test5.test',
            uid: 'should_delete_a_user'
        });
        await user.destroy();
        const foundUser = await User.findByPk(user.uid);
        expect(foundUser).toBeNull();
    });
});

describe('User Model with Associations', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should create a user with associated posts and messages', async () => {
        const sender = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test.test',
            uid: '1234567890'
        });
        await sender.save();

        const receiver = await User.create({
            firstName: 'TestReceiver',
            lastName: 'UserReceiver',
            email: 'receiver@test.test',
            uid: '0987654321'
        });
        await receiver.save();

        const post = await Post.create({
            title: 'test post',
            content: 'test content',
            userId: sender.uid,
        });

        const file = await File.create({
            owner_uid: sender.uid,
            file_name: 'test_file',
            original_name: 'test_file',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_file',
            postId: post.id
        });
        await file.save();

        const message =  await Message.create({
            senderId: sender.uid,
            receiverId: receiver.uid,
            message: 'test message',
            isRead: false,
            isReceived: false,
            type: 'text',
        });
        await message.save();

        const attachment = await File.create({
            owner_uid: sender.uid,
            file_name: 'test_attachment',
            original_name: 'test_attachment',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_Attachment.txt',
            messageId: message.id
        });

        // Check if the associations are working correctly
        const senderMessages = await sender.getSentMessages();
        const receiverMessages = await receiver.getReceivedMessages();
        const messageFile = await message.getAttachments();

        expect(senderMessages.length).toBeGreaterThan(0);
        expect(senderMessages[0].id).toBe(message.id);
        expect(receiverMessages[0].id).toBe(message.id);
        expect(messageFile[0].id).toBe(attachment.id);
    });
});
