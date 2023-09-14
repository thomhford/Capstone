// routes/user.js
import express from 'express';
const router = express.Router();
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import User from '../models/User';
import 'dotenv/config';
import crypto from "crypto";

const jwtSecret = process.env.JWT_SECRET;
if (!jwtSecret) {
    throw new Error('JWT_SECRET must be defined');
}

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

    // Create token
    const token = jwt.sign({ id: user.id }, jwtSecret, { expiresIn: '1d' });

    // Create refresh token
    const refreshToken = crypto.randomBytes(64).toString('hex');
    user.refreshToken = refreshToken;
    await user.save();

    // If all checks pass, return a success message
    res.json({ message: 'Logged in successfully', token, refreshToken });
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

router.post('/refresh', async (req, res) => {
    const { refreshToken } = req.body;

    // Find user by refresh token
    const user = await User.findOne({ where: { refreshToken } });
    if (!user) {
        return res.status(400).json({ message: 'Invalid refresh token' });
    }

    // Create new token
    const token = jwt.sign({ id: user.id }, jwtSecret, { expiresIn: '1d' });

    // Create new refresh token
    const newRefreshToken = crypto.randomBytes(64).toString('hex');

    // Send new token and refresh token to client
    res.json({ message: 'Token refreshed successfully', token, newRefreshToken });
});

router.post('/logout', async (req, res) => {
    const { refreshToken } = req.body;

    // Find user by refresh token
    const user = await User.findOne({ where: { refreshToken } });
    if (!user) {
        return res.status(400).json({ message: 'Invalid refresh token' });
    }

    // Delete refresh token
    user.refreshToken = null;
    await user.save();

    // Send success message to client
    res.json({ message: 'Logged out successfully' });
});

export default router;