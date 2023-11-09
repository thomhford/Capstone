import { Request, Response } from 'express';
import multer from 'multer';
import path from 'path';
import { getUserId } from '../utils/authUtils';
import appRoot from "app-root-path";
import { File } from '../models';
import { format } from 'date-fns';

const rootDirectory = appRoot.path; // Get the root directory to find the folder to store the file

const storage = multer.diskStorage({
    destination: async (req: Request, file, cb) => {
        const userId = await getUserId(req);
        if (userId) {
            const userFolder = path.join(rootDirectory, 'public/uploads', userId);
            cb(null, userFolder);
        } else {
            cb(new Error('Unauthorized request'), '');
        }
    },
    filename: (req: Request, file, cb) => {
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

                // Create a new File record in the database
                const fileRecord = {
                    file_name: metadata.filename,
                    original_name: metadata.original_name,
                    mime_type: metadata.mimetype,
                    file_size: metadata.size,
                    upload_date: metadata.upload_date,
                    file_path: path.join('uploads', userId, metadata.filename),
                    user_uid: userId,
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
