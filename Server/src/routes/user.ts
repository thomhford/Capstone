// routes/user.js
import express from 'express';
import User from '../models/User';
import { getUserId } from '../utils/authUtils';
import { registerUser } from '../controllers/userRegistrationController';

const router = express.Router();

router.post('/register', registerUser);

export default router;