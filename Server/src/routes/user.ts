// routes/user.js
import express from 'express';
import User from '../models/User';
import admin from "firebase-admin";

const router = express.Router();

router.post('/login', async (req, res) => {
    const { idToken } = req.body;

    try {
        const decodedToken = await admin.auth().verifyIdToken(idToken);
        const uid = decodedToken.uid;

        res.json({ message: 'Logged in successfully', uid });
    } catch (error) {
        res.status(400).json({ message: 'Invalid ID token' });
    }
});

router.post('/register', async (req, res) => {
    const { firstName, lastName, email, password } = req.body;

    try {
        // Create a new user in Firebase Authentication
        const userRecord = await admin.auth().createUser({
            email,
            password, // Firebase will handle password hashing
            displayName: `${firstName} ${lastName}`,
        });

        const user = await User.create({
            firstName,
            lastName,
            email,
            uid: userRecord.uid, // Store the Firebase UID
        });

        res.json({ message: 'User created successfully', user });
    } catch (error: any) {
        res.status(400).json({ message: error.message });
    }
});

export default router;