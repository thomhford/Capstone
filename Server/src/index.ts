// index.ts
import express from 'express';
import { Server } from 'http';
import { Server as IOServer } from 'socket.io';
import sequelize from "./config/db";
import applyRoutes from "./routes";
import 'dotenv/config';
import admin from "firebase-admin";

const app = express();
const port = 3000;
const serviceAccountPath = process.env.GOOGLE_APPLICATION_CREDENTIALS;
const databaseURL = process.env.DATABASE_URL;
if (!serviceAccountPath) {
    throw new Error('GOOGLE_APPLICATION_CREDENTIALS environment variable is not set');
}
const serviceAccount = require(serviceAccountPath);

admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    databaseURL: databaseURL
});

sequelize.sync({ alter: true }).then(() => { // TODO: remove alter: true when Models are finalized
    console.log('Database & tables created!');
});

app.use(express.json());
app.use(express.static('public'));
applyRoutes(app);

const server = new Server(app);

export const io = new IOServer(server);

import './config/socket';

server.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});