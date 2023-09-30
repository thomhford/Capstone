// authUtils.ts
import { Request } from 'express';
import admin from 'firebase-admin';

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