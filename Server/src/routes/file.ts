// file.ts

import express from 'express';
import { verifyUser } from '../utils/authUtils';
import { handleFileRequest } from "../controllers/fileController";

const router = express.Router();

router.post('/file', verifyUser, handleFileRequest);

export default router;
