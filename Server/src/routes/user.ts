// routes/user.js
import express from 'express';
import User from '../models/User';
import admin from "firebase-admin";

const router = express.Router();

router.post('/login', async (req, res) => {
    const idToken = req.headers.authorization?.split('Bearer ')[1];

    if (!idToken) {
        return res.status(401).json({ message: 'Unauthorized request' });
    }

    try {
        const decodedToken = await admin.auth().verifyIdToken(idToken);
        const uid = decodedToken.uid;

        let user = await User.findOne({ where: { uid } });

        res.status(200).json({ message: 'Logged in successfully', uid });
    } catch (error) {
        res.status(400).json({ message: 'Invalid ID token' });
    }
});

router.post('/register', async (req, res) => {
    console.log("received request")
    const idToken = req.headers.authorization?.split('Bearer ')[1];

    if (!idToken) {
        return res.status(401).json({ message: 'Unauthorized request' });
    }

    try {
        const decodedToken = await admin.auth().verifyIdToken(idToken);
        const uid = decodedToken.uid;

        let user = await User.findOne({ where: { uid } });

        if (!user) {
            const { firstName, lastName, email } = req.body;
            await User.create({
                firstName,
                lastName,
                email,
                uid
            });
        }

        res.status(200).json({ message: 'User registered successfully' });
    } catch (error: any) {
        res.status(400).json({ message: error.message });
    }
});

export default router;