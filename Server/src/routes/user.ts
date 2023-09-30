// routes/user.js
import express from 'express';
import User from '../models/User';
import { getUserId } from '../utils/authUtils';
import { registerUser } from '../controllers/userRegistrationController';

const router = express.Router();

router.post('/login', async (req, res) => {
    try {
        // Use getUserId to retrieve the user's ID
        const userId = await getUserId(req);

        if (!userId) {
            return res.status(401).json({ message: 'Unauthorized request' });
        }

        const user = await User.findOne({ where: { uid: userId } });

        if (!user) {
            return res.status(400).json({ message: 'User not found' });
        }

        // Handle successful login
        res.status(200).json({ message: 'Logged in successfully' });
    } catch (error: any) {
        // Handle errors, including unauthorized requests and invalid tokens
        res.status(400).json({message: error.message || 'Invalid request'});
    }
});

router.post('/register', registerUser);

export default router;