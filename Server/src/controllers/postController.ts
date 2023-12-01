// postController.ts

import { Request, Response } from 'express';
import { Post, File } from '../models';
import {getUserId} from "../utils/authUtils";

/**
 * handlePostRequest - This method is used to fetch all posts from the database.
 * It includes associated files with each post and orders them by creation date in descending order.
 *
 * @param {Request} _req - The Express request object.
 * @param {Response} res - The Express response object.
 * @returns {Response} The Express response object with a status of 200 and a JSON body containing all posts.
 * @throws {Response} Will return a response with a status of 500 and a JSON body containing an error message if the operation fails.
 */
export const handlePostRequest = async (_req: Request, res: Response) => {
    try {
        const posts = await Post.findAll({
            include: [{
                model: File,
                as: 'Files'
            }],
            order : [['createdAt', 'DESC']]
        });
        return res.status(200).json(posts);
    } catch (error) {
        console.log(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}

/**
 * handleUserPostRequest - This method is used to fetch all posts from a specific user from the database.
 * It includes associated files with each post and orders them by creation date in descending order.
 *
 * @param {Request} req - The Express request object.
 * @param {Response} res - The Express response object.
 * @returns {Response} The Express response object with a status of 200 and a JSON body containing all posts from the user.
 * @throws {Response} Will return a response with a status of 500 and a JSON body containing an error message if the operation fails.
 */
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
            order: [['createdAt', 'DESC']]
        });
        return res.status(200).json(posts);
    } catch (error) {
        console.log(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}