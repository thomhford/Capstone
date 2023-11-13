// file.test.ts
import { initializeModelsAndAssociations } from '../../src/models';
import { testDb } from '../testDb';

const { User, File, Post } = initializeModelsAndAssociations(testDb);

describe('Post Model', () => {
    beforeAll(async () => {
        await testDb.sync({force: true});
    });

    it('should be defined', () => {
        expect(Post).toBeDefined();
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
});