// routes/post.ts

import express from 'express';
import { verifyUser } from '../utils/authUtils';
import {handlePostRequest, handleUserPostRequest} from "../controllers/postController";

const router = express.Router();

router.post('/file', verifyUser, handlePostRequest);
router.post('/user_file', verifyUser, handleUserPostRequest);

export default router;
