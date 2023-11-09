// authUtils.ts
import { Request, Response, NextFunction } from 'express';
import admin from 'firebase-admin';
import { User } from "../models";

export const getUserId = async (req: Request) => {
    const idToken = req.headers.authorization?.split('Bearer ')[1];
    if (!idToken) {
        throw new Error('Unauthorized request');
    }
    try {
        const decodedToken = await admin.auth().verifyIdToken(idToken);
        return decodedToken.uid;
    } catch (error) {
        throw new Error('Unauthorized request');
    }
};

export const verifyUser = async (req: Request, res: Response, next: NextFunction) => {
    const idToken = req.headers.authorization?.split('Bearer ')[1];
    if (!idToken) {
        return res.status(401).json({ message: 'Unauthorized request' });
    }
    try {
        const decodedToken = await admin.auth().verifyIdToken(idToken);
        const user = await User.findOne({ where: { uid: decodedToken.uid } });
        if (!user) {
            return res.status(401).json({ message: 'Unauthorized request' });
        }
        // If user is authenticated and exists, proceed
        next();
    } catch (error) {
        return res.status(500).json({ message: 'Internal server error' });
    }
};