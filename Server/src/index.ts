import express from 'express';
import sequelize from "../config/db";
import userRoutes from "./routes/user";
import 'dotenv/config';
import {secretKey} from "./utils/secretKey";

const app = express();
const port = 3000;

// Set JWT secret key for signing and verifying tokens
process.env.JWT_SECRET = secretKey;

sequelize.sync().then(() => {
    console.log('Database & tables created!');
});

app.use(express.json());
app.use('/user', userRoutes);

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});





