// routes/file.ts

import express from 'express';
import { verifyUser } from '../utils/authUtils';
import {handleFileRequest, handleUserFileRequest} from "../controllers/postController";

const router = express.Router();

router.post('/file', verifyUser, handleFileRequest);
router.post('/user_file', verifyUser, handleUserFileRequest);

export default router;
