// routes/user.js
import express from 'express';
const router = express.Router();
import bcrypt from 'bcrypt';
import User from '../models/User';

router.post('/login', async (req, res) => {
    const { email, password } = req.body;

    // Find user by email
    const user = await User.findOne({ where: { email } });
    if (!user) {
        return res.status(400).json({ message: 'Invalid email or password' });
    }

    // Compare passwords
    const validPassword = await bcrypt.compare(password, user.password);
    if (!validPassword) {
        return res.status(400).json({ message: 'Invalid email or password' });
    }

    // If all checks pass, return a success message
    res.json({ message: 'Logged in successfully' });
});

router.post('/register', async (req, res) => {
    const { firstName, lastName, email, password } = req.body;

    try {
        const user = await User.create({
            firstName,
            lastName,
            email,
            password
        });
        res.json({ message: 'User created successfully', user });
    } catch (error) {
        res.status(400).json({ message: error });
    }
});

export default router;