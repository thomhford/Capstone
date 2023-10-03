// fileController.ts

import { Request, Response } from 'express';
import File from '../models/File';

export const handleFileRequest = async (req: Request, res: Response) => {
    try {
        const files = await File.findAll();
        const formattedFiles = files.map((file) => {
            return {
                file_name: file.file_name,
                original_name: file.original_name,
                mime_type: file.mime_type,
                file_size: file.file_size,
                upload_date: file.upload_date,
                file_path:  file.file_path,
                // file_url: 'http://localhost:3000/${json['file.file_path']}',
            };
        });
        return res.status(200).json(formattedFiles);
    } catch (error) {
        console.log(error);
        return res.status(500).json({ message: 'Internal server error' });
    }
}