// message.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { Message, User, File } = initializeModelsAndAssociations(testDb);

describe('Message Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(Message).toBeDefined();
    });

    it('should create a message', async () => {
        const user = await User.create({
            firstName: 'Test',
            lastName: 'User',
            email: 'test@test.test',
            uid: '1234567890'
        });
        const message = await Message.create({
            senderId: user.uid,
            message: 'test message',
            isRead: false,
            type: 'text',
        });
        expect(message.senderId).toBe(user.uid);
        expect(message.message).toBe('test message');
        expect(message.isRead).toBe(false);
        expect(message.type).toBe('text');
    });
});