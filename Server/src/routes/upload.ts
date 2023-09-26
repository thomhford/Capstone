import express from 'express';
import multer from "multer";
import path from "path";

const router = express.Router();

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, '../uploads')
    },
    filename: (req, file, cb) => {
        console.log("file:", file)
        cb(null, Date.now() + path.extname(file.originalname))
    }
})

const upload = multer({ storage: storage })

router.post('/upload', upload.single('file'), (req, res) => {
    if (req.file) {
        const file = req.file;
        const metadata = {
            filename: file.filename,
            originalname: file.originalname,
            mimetype: file.mimetype,
            size: file.size
        }
        res.status(200).send('File uploaded successfully')
    } else {
        res.status(400).send('No file uploaded')
    }
});