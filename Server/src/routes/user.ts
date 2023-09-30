// routes/user.js
import express from 'express';
import User from '../models/User';
import admin from "firebase-admin";
import path from "path";
import * as fs from "fs";
import { getUserId } from '../utils/authUtils';
import appRoot from 'app-root-path';

const router = express.Router();
const rootDirectory = appRoot.path; // Get the root directory of the project for folder creation

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

router.post('/register', async (req, res) => {
    try {
        // Use getUserId to retrieve the user's ID
        const userId = await getUserId(req);

        if (!userId) {
            return res.status(401).json({ message: 'Unauthorized request' });
        }

        // Check if the user already exists in your database
        let user = await User.findOne({ where: { uid: userId } });

        if (user) {
            return res.status(400).json({ message: 'User already exists' });
        }

        // If the user doesn't exist, create a folder for the user's uploaded files
        const userFolder = path.join(rootDirectory, 'uploads', userId);
        fs.mkdirSync(userFolder, { recursive: true });

        // Create a user in the database
        const firebaseUser = await admin.auth().getUser(userId);
        const { displayName, email } = firebaseUser;
        await User.create({
            firstName: displayName?.split(' ')[0],
            lastName: displayName?.split(' ')[1],
            email,
            uid: userId
        });

        return res.status(200).json({ message: 'User registered successfully' });
    } catch (error: any) {
        return res.status(400).json({ message: error.message || 'Invalid request' });
    }
});

export default router;