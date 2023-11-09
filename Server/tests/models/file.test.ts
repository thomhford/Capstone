// file.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { Message, User, File } = initializeModelsAndAssociations(testDb);

describe('File Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(File).toBeDefined();
    });

    it('should create an uploaded file', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test.test',
            uid: 'should_create_an_uploaded_file'
        });
        const file = await File.create({
            file_name: 'test_file',
            original_name: 'test_file',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_file',
            user_uid: user.uid
        });
        expect(file.file_name).toBe('test_file');
        expect(file.original_name).toBe('test_file');
        expect(file.mime_type).toBe('text/plain');
        expect(file.file_size).toBe(100);
        expect(file.upload_date).toBeDefined();
        expect(file.file_path).toBe('test_file');
        expect(file.user_uid).toBe(user.uid);
    });

    it('should create a message attachment', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test1.test',
            uid: 'should_create_a_message_attachment'
        });
        const message =  await Message.create({
            senderId: user.uid,
            message: 'test message',
            isRead: false,
            type: 'text',
        });
        const file = await File.create({
            file_name: 'test_file',
            original_name: 'test_file',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_file',
            messageId: message.id
        });
        expect(file.messageId).toBe(message.id);
    });
});
