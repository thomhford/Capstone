// index.ts
import express from 'express';
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

sequelize.sync({ alter: true }).then(() => {
    console.log('Database & tables created!');
});

app.use(express.json());
app.use(express.static('public'));
applyRoutes(app);

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});