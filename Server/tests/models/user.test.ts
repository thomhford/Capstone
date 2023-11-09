// user.test.ts
import { createUserModel } from '../../src/models/User';
import { testDb } from '../testDb';

const User = createUserModel(testDb);

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
});
