// userRegistrationController.ts

import admin from 'firebase-admin';
import { Request, Response } from 'express';
import path from 'path';
import fs from 'fs';
import { getUserId } from '../utils/authUtils';
import { User } from '../models';
import appRoot from 'app-root-path';

const rootDirectory = appRoot.path; // Get the root directory of the project for folder creation

export const registerUser = async (req: Request, res: Response) => {
    try {
        const userId = await getUserId(req);

        if (!userId) {
            return res.status(401).json({ message: 'Unauthorized request' });
        }

        let user = await User.findOne({ where: { uid: userId } });

        if (user) {
            return res.status(400).json({ message: 'User already exists' });
        }

        const userFolder = path.join(rootDirectory, 'public/uploads', userId);
        fs.mkdirSync(userFolder, { recursive: true });

        const firebaseUser = await admin.auth().getUser(userId);
        const { displayName, email } = firebaseUser;

        await User.create({
            // TODO: Do better checks for first name, last name and email...
            firstName: displayName!.split(' ')[0],
            lastName: displayName!.split(' ')[1],
            email: email!,
            uid: userId,
        });

        console.log('User registered successfully');
        return res.status(200).json({ message: 'User registered successfully' });
    } catch (error: any) {
        console.log("User Registration Controller:",error);
        return res.status(400).json({ message: error.message || 'Invalid request' });
    }
};
