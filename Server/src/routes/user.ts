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

        res.status(200).json({ message: 'Logged in successfully', uid });
    } catch (error) {
        res.status(400).json({ message: 'Invalid ID token' });
    }
});

router.post('/register', async (req, res) => {
    // Get the ID token from the Authorization header
    const idToken = req.headers.authorization?.split('Bearer ')[1];

    if (!idToken) {
        return res.status(401).json({ message: 'Unauthorized request' });
    }

    try {
        // Verify the ID token and get the uid of the user
        const decodedToken = await admin.auth().verifyIdToken(idToken);
        const uid = decodedToken.uid;

        // Validate the user in Firebase Authentication
        const userRecord = await admin.auth().getUser(uid);

        // Check if the user already exists in your database
        let user = await User.findOne({ where: { uid: userRecord.uid } });

        // If the user does not exist in your database, create a new user
        if (!user) {
            const { firstName, lastName, email } = req.body;
            user = await User.create({
                firstName,
                lastName,
                email,
                uid: userRecord.uid, // Store the Firebase UID
            });
        }

        res.status(200).json({ message: 'User registered successfully' });
    } catch (error: any) {
        res.status(400).json({ message: error.message });
    }
});

export default router;