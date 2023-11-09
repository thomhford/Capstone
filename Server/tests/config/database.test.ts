// database.test.ts
import { testDb } from "../testDb";

describe('Database Connection', () => {
	it('should connect to the database', async () => {
		try {
			await testDb.authenticate();
			expect(true).toBe(true);
		} catch (error) {
			console.error('Unable to connect to the database:', error);
			expect(true).toBe(false);
		}
	});
});