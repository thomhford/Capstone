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
    console.log("req.headers:", req.headers)
    const idToken = req.headers.authorization?.split('Bearer ')[1];
    console.log("idToken:", idToken)
    console.log("req.headers:", req.headers)
    console.log("req.body:", req.body)

    if (!idToken) {
        console.log("Unauthorized request")
        return res.status(401).json({ message: 'Unauthorized request' });
    }

    try {
        let decodedToken;
        try {
            decodedToken = await admin.auth().verifyIdToken(idToken);
        } catch (error) {
            console.log("Cannot verify token:", error)
            return res.status(400).json({ message: error });
        }
        const uid = decodedToken.uid;
        console.log("uid:", uid)

        let user = await User.findOne({ where: { uid } });

        if (user) {
            console.log("user already exists")
            return res.status(400).json({ message: 'User already exists' });
        } else {
            const { firstName, lastName, email } = req.body;
            console.log("creating user", firstName, lastName, email, uid)
            await User.create({
                firstName,
                lastName,
                email,
                uid
            });
            console.log("user registered successfully")
            return res.status(200).json({ message: 'User registered successfully' });
        }

    } catch (error: any) {
        console.log(error)
        return res.status(400).json({ message: error.message });
    }
});

export default router;