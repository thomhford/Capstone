// postController.ts

import { Request, Response } from 'express';
import { Post, File } from '../models';
import {getUserId} from "../utils/authUtils";

export const handlePostRequest = async (_req: Request, res: Response) => {
    try {
        const posts = await Post.findAll({
            include: [{
                model: File,
                as: 'Files'

            }],
            order : [['upload_date', 'DESC']]
        });
        return res.status(200).json(posts);
    } catch (error) {
        console.log(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

export const handleUserPostRequest = async (req: Request, res: Response) => {
    try {
        const userId = await getUserId(req);
        const posts = await Post.findAll({
            where: {
                userId: userId
            },
            include: [{
                model: File,
                as: 'Files'
            }],
            order: [['upload_date', 'DESC']]
        });
        return res.status(200).json(posts);
    } catch (error) {
        console.log(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}