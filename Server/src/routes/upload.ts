import express from 'express';
import multer from 'multer';
import path from 'path';
import appRoot from 'app-root-path';
import { getUserId } from '../utils/authUtils';

const router = express.Router();
const rootDirectory = appRoot.path;

const storage = multer.diskStorage({
    destination: async (req, file, cb) => {
        const userId = await getUserId(req);
        if (userId){
            const userFolder = path.join(rootDirectory, 'uploads', userId);
            cb(null, userFolder);
        } else {
            throw new Error('Unauthorized request');
        }
    },
    filename: async (req, file, cb) => {
        const timestamp = Date.now();
        const extension = path.extname(file.originalname);
        const filename = `${timestamp}${extension}`; // Remove userId from filename
        cb(null, filename);
    },
});

const upload = multer({ storage: storage });

router.post('/upload', (req, res) => {
    try {
        upload.single('file')(req, res, (err) => {
            if (err) {
                if (err.message === 'Unauthorized request') {
                    return res.status(401).json({ message: 'Unauthorized request' });
                }
                return res.status(500).json({ message: 'Internal server error' });
            }
            if (req.file) {
                const file = req.file;
                const metadata = {
                    filename: file.filename,
                    originalname: file.originalname,
                    mimetype: file.mimetype,
                    size: file.size,
                };
                return res.status(200).json({ message: 'File uploaded successfully', metadata });
            } else {
                return res.status(400).json({ message: 'No file uploaded' });
            }
        });
    } catch (error) {
        return res.status(500).json({ message: 'Internal server error' });
    }
});

export default router;