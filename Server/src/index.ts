import express from 'express';
import sequelize from "../config/db";
import User from "./models/User";
import userRoutes from "./routes/user";

const app = express();
const port = 3000;

sequelize.sync().then(() => {
    console.log('Database & tables created!');
});

app.use(express.json());
app.use('/user', userRoutes);



