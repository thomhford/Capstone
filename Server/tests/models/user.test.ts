// user.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { User, Message, File } = initializeModelsAndAssociations(testDb);

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

    it('should create a user with associated files and messages', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test.test',
            uid: '1234567890'

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
        const message =  await Message.create({
            senderId: user.uid,
            message: 'test message',
            isRead: false,
            type: 'text',
        });

        // Check if the associations are working correctly
        const files = await user.getFiles();
        const messages = await user.getSentMessages();

        expect(files.length).toBeGreaterThan(0);
        expect(messages.length).toBeGreaterThan(0);
        expect(files[0].id).toBe(file.id);
        expect(messages[0].id).toBe(message.id);
    });
});
