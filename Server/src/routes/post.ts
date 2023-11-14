// routes/post.ts

import express from 'express';
import { verifyUser } from '../utils/authUtils';
import {handlePostRequest, handleUserPostRequest} from "../controllers/postController";

const router = express.Router();

router.post('/post', verifyUser, handlePostRequest);
router.post('/user_post', verifyUser, handleUserPostRequest);

export default router;
