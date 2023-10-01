import { Request, Response } from 'express';
import multer from 'multer';
import path from 'path';
import { getUserId } from '../utils/authUtils';
import appRoot from "app-root-path";
import File from '../models/File';

const rootDirectory = appRoot.path; // Get the root directory to find the folder to store the file

const storage = multer.diskStorage({
    destination: async (req: Request, file, cb) => {
        const userId = await getUserId(req);
        if (userId) {
            const userFolder = path.join(rootDirectory, 'uploads', userId);
            cb(null, userFolder);
        } else {
            cb(new Error('Unauthorized request'), '');
        }
    },
    filename: (req: Request, file, cb) => {
        const timestamp = new Date();
        const extension = path.extname(file.originalname);
        const filename = `${timestamp}${extension}`;
        cb(null, filename);
    },
});

const upload = multer({ storage: storage });

export const handleFileUpload = async (req: Request, res: Response) => {
    try {
        upload.single('file')(req, res, async (err) => {
            if (err) {
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

                // Create a new File record in the database
                const userId = await getUserId(req);
                if (userId) {
                    await File.create({
                        file_name: metadata.filename,
                        original_name: metadata.original_name,
                        mime_type: metadata.mimetype,
                        file_size: metadata.size,
                        upload_date: metadata.upload_date,
                        file_path: path.join('uploads', userId, metadata.filename),
                        user_uid: userId,
                    });
                }
                console.log(metadata,'File uploaded successfully');
                return res.status(200).json({ message: 'File uploaded successfully', metadata });
            } else {
                console.log('No file uploaded')
                return res.status(400).json({ message: 'No file uploaded' });
            }
        });
    } catch (error) {
        console.log("Upload Controller:",error);
        return res.status(500).json({ message: 'Internal server error' });
    }
};
