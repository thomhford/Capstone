import { Request, Response } from 'express';
import multer from 'multer';
import path from 'path';
import { getUserId } from '../utils/authUtils';
import appRoot from "app-root-path";
import { File, Post } from '../models';
import { format } from 'date-fns';
import { Transaction } from "sequelize";
import sequelize from "../config/db";
import { registerUser } from "./userRegistrationController";

const rootDirectory = appRoot.path; // Get the root directory to find the folder to store the file

const storage = multer.diskStorage({
    destination: async (req: Request, _file, cb) => {
        const userId = await getUserId(req);
        if (userId) {
            const userFolder = path.join(rootDirectory, 'public/uploads', userId);
            cb(null, userFolder);
        } else {
            cb(new Error('Unauthorized request'), '');
        }
    },
    filename: (_req: Request, file, cb) => {
        const timestamp = format(new Date(), 'yyyyMMddHHmmss');
        const sanitizedOriginalName = file.originalname.replace(/[^a-zA-Z0-9.]/g, "_"); // Sanitize original name
        const extension = path.extname(sanitizedOriginalName);
        const filename = `${timestamp}${extension}`;
        cb(null, filename);
    },
});

const upload = multer({
    storage: storage,
    limits: {fileSize: 50000000}, // 50 MB
});

export const handleFileUpload = async (req: Request, res: Response) => {
    console.log('Upload Controller:', req.file);
    try {
        upload.single('file')(req, res, async (err) => {
            if (err instanceof multer.MulterError) {
                // A Multer error occurred when uploading.
                if (err.code === 'LIMIT_FILE_SIZE') {
                    console.log('Upload Controller:', err);
                    return res.status(422).json({message: 'File size limit is exceeded'});
                }
            } else if (err) {
                console.log("Upload Controller:",err);
                if (err.message === 'Unauthorized request') {
                    return res.status(401).json({ message: 'Unauthorized request' });
                }
                return res.status(500).json({ message: 'Internal server error' });
            }
            if (req.file) {
                const file = req.file;
                const metadata = {
                    filename: file.filename,
                    original_name: file.originalname,
                    mimetype: file.mimetype,
                    size: file.size,
                    upload_date: new Date(),
                };

                const userId = await getUserId(req);
                if (await registerUser(userId)){
                    console.log('User not yet created, creating user');
                } else{
                    console.log('User already exists');
                }
                // Create a new File record in the database
                const fileRecord = {
                    owner_uid: userId,
                    file_name: metadata.filename,
                    original_name: metadata.original_name,
                    mime_type: metadata.mimetype,
                    file_size: metadata.size,
                    upload_date: metadata.upload_date,
                    file_path: path.join('uploads', userId, metadata.filename),
                    // Don't know if this file is an attachment to a message or an upload from a user
                    // So we set both to null and will update the record later
                }

                const createdFile = await File.create(fileRecord);
                const fileResponseData = {
                    ...metadata,
                    id: createdFile.id,
                }

                console.log(fileResponseData,'File uploaded successfully');
                return res.status(200).json({ message: 'File uploaded successfully', fileResponseData });
            } else {
                console.log('No file uploaded')
                return res.status(400).json({ message: 'No file uploaded' });
            }
        });
    } catch (error) {
        console.log("Upload Controller:", error);
        return res.status(500).json({message: 'Internal server error'});

    }
};
export const handlePostCreation = async (req: Request, res: Response) => {
    console.log('Post Controller:', req.body);
    const { title, content, ids: fileIds } = req.body; // Change fileId to fileIds
    const userId = await getUserId(req);

    // Start a transaction
    const t: Transaction = await sequelize.transaction();

    try {
        // Find the Files with the provided fileIds
        const files = await Promise.all(fileIds.map((fileId: number) => File.findByPk(fileId, { transaction: t })));

        // If any of the files do not exist, rollback the transaction and return an error
        if (files.some(file => !file)) {
            console.log(`One or more files not found: ${fileIds}`);
            await t.rollback();
            return res.status(400).json({ message: 'One or more files not found' });
        }
        console.log(`Post associated files: ${files}`);

        // Create a new Post
        const post = await Post.create({
            userId,
            title,
            content,
        }, { transaction: t });
        console.log(`Created post: ${post}`);

        // Update each File with the postId
        await Promise.all(files.map(file => {
            file.postId = post.id;
            return file.save({ transaction: t });
        }));
        console.log(`Updated files: ${files}`);

        // If everything is successful, commit the transaction
        await t.commit();

        console.log('Post created successfully');
        res.status(200).json({ message: 'Post created successfully' });
    } catch (error) {
        // If there's an error, rollback the transaction
        await t.rollback();
        console.error(error);
        res.status(500).json({ message: 'Internal server error' });
    }
};