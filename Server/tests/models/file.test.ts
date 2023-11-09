// file.test.ts
import { createFileModel } from '../../src/models/File';
import { testDb } from '../testDb';

const File = createFileModel(testDb);

describe('File Model', () => {
    beforeAll(async () => {
        await testDb.sync({ force: true });
    });

    it('should be defined', () => {
        expect(File).toBeDefined();
    });

    it('should create a file', async () => {
        const file = await File.create({
            file_name: 'test_file',
            original_name: 'test_file',
            mime_type: 'text/plain',
            file_size: 100,
            upload_date: new Date(),
            file_path: 'test_file',
        });
        expect(file.file_name).toBe('test_file');
        expect(file.original_name).toBe('test_file');
        expect(file.mime_type).toBe('text/plain');
        expect(file.file_size).toBe(100);
        expect(file.upload_date).toBeDefined();
        expect(file.file_path).toBe('test_file');
    });
});
