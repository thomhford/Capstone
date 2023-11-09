// message.test.ts
import { createMessageModel } from '../../src/models/Message';
import { testDb } from '../testDb';

const Message = createMessageModel(testDb);

describe('Message Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(Message).toBeDefined();
    });

    it('should create a message', async () => {
        const message = await Message.create({
            senderId: 1,
            message: 'test message',
            isRead: false,
            type: 'text',
        });
        expect(message.senderId).toBe(1);
        expect(message.message).toBe('test message');
        expect(message.isRead).toBe(false);
        expect(message.type).toBe('text');
    });
});