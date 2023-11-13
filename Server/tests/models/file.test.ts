// file.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { Message, User, File, Post } = initializeModelsAndAssociations(testDb);

describe('File Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(File).toBeDefined();
    });

    it('should create a post', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test.test',
            uid: 'should_create_an_uploaded_file'
        });
        const post = await Post.create({
            title: 'test post',
            content: 'test content',
            userId: user.uid,
        });
        const file = await File.create({
            file_name: 'test_file',
            original_name: 'test_file',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_file',
            postId: post.id
        });
        expect(file.file_name).toBe('test_file');
        expect(file.original_name).toBe('test_file');
        expect(file.mime_type).toBe('text/plain');
        expect(file.file_size).toBe(100);
        expect(file.upload_date).toBeDefined();
        expect(file.file_path).toBe('test_file');
        expect(file.postId).toBe(post.id);
    });

    it('should create a message attachment', async () => {
        const sender = await User.create({
            firstName: 'TestSender',
            lastName: 'UserSender',
            email: 'test@test1.testSender',
            uid: 'should_create_a_message_attachment_sender'
        });
        await sender.save();
        const receiver = await User.create({
            firstName: 'TestReceiver',
            lastName: 'UserReceiver',
            email: 'test@test1.testReceiver',
            uid: 'should_create_a_message_attachment_receiver'
        });
        await receiver.save();
        const message =  await Message.create({
            senderId: sender.uid,
            receiverId: receiver.uid,
            message: 'test message',
            isRead: false,
            isReceived: false,
            type: 'text',
        });
        await message.save();
        const file = await File.create({
            file_name: 'test_attachment',
            original_name: 'test_attachment',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_attachment.txt',
            messageId: message.id
        });
        expect(file.messageId).toBe(message.id);
    });
});
