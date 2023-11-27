// upload.ts

import express from 'express';
import {handleFileUpload, handlePostCreation} from "../controllers/uploadController";

const router = express.Router();

router.post('/upload', handleFileUpload);
router.post('/post', handlePostCreation);

export default router;