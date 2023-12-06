// userRegistrationController.ts

import admin from 'firebase-admin';
import path from 'path';
import fs from 'fs';
import { User } from '../models';
import appRoot from 'app-root-path';
import { Request, Response } from 'express';
import { getUserId } from '../utils/authUtils';

const rootDirectory = appRoot.path; // Get the root directory of the project for folder creation

export const registerUser = async (userId: string): Promise<boolean> => {
    try {
        let user = await User.findOne({ where: { uid: userId } });

        if (user) {
            console.log('User already exists');
            return false;
        }

        const userFolder = path.join(rootDirectory, 'public/uploads', userId);
        fs.mkdirSync(userFolder, { recursive: true });

        const firebaseUser = await admin.auth().getUser(userId);
        const { displayName, email, photoURL } = firebaseUser;

        await User.create({
            firstName: displayName!.split(' ')[0],
            lastName: displayName!.split(' ')[1],
            email: email!,
            uid: userId,
            photoUrl: photoURL
        });

        console.log('User registered successfully');
        return true;
    } catch (error: any) {
        console.log("User Registration Controller:",error);
        return false;
    }
};

export const registerUserFromRequest = async (req: Request, res: Response) => {
    try {
        const userId = await getUserId(req);

        if (!userId) {
            return res.status(401).json({ message: 'Unauthorized request' });
        }

        const registrationSuccessful = await registerUser(userId);

        if (!registrationSuccessful) {
            return res.status(400).json({ message: 'User already exists' });
        }

        return res.status(200).json({ message: 'User registered successfully' });
    } catch (error: any) {
        console.log("User Registration Controller:", error);
        return res.status(400).json({ message: error.message || 'Invalid request' });
    }
};