// routes/index.ts
import { Express } from 'express';
import userRoutes from './user';
import uploadRoutes from './upload';
import fileRoutes from './post';

export default function (app: Express) {
    app.use(userRoutes);
    app.use(uploadRoutes);
    app.use(fileRoutes);
}

