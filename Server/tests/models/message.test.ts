// message.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { Message, User } = initializeModelsAndAssociations(testDb);

describe('Message Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(Message).toBeDefined();
    });

    it('should create a message', async () => {
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
        const message = await Message.create({
            senderId: sender.uid,
            receiverId: receiver.uid,
            message: 'test message',
            isRead: false,
            isReceived: false,
            type: 'text',
        });
        await message.save();
        expect(message.senderId).toBe(sender.uid);
        expect(message.message).toBe('test message');
        expect(message.isRead).toBe(false);
        expect(message.type).toBe('text');
    });
});