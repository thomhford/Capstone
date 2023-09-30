// index.ts
import express from 'express';
import sequelize from "../config/db";
import userRoutes from "./routes/user";
import uploadRoutes from "./routes/upload";
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

sequelize.sync().then(() => {
    console.log('Database & tables created!');
});

app.use(express.json());
app.use('/user', userRoutes);
app.use(uploadRoutes);

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});