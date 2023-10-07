// upload.ts

import express from 'express';
import { handleFileUpload } from "../controllers/uploadController";

const router = express.Router();

router.post('/upload', handleFileUpload);

export default router;