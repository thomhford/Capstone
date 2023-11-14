// routes/user.js
import express from 'express';
import { registerUserFromRequest } from '../controllers/userRegistrationController';

const router = express.Router();

router.post('/register', registerUserFromRequest);

export default router;