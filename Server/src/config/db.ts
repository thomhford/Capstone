// db.ts
import {Sequelize} from 'sequelize';
import 'dotenv/config';

// Get environment variables for database connection
const dbDatabase = process.env.DB_DATABASE;
const dbUsername = process.env.DB_USERNAME;
const dbPassword = process.env.DB_PASSWORD;

// Check if all environment variables are set
if (!dbDatabase || !dbUsername || !dbPassword) {
    throw new Error('Please define database, username, and password in .env file');
}

// Create connection to database
const sequelize = new Sequelize(dbDatabase, dbUsername, dbPassword, {
    host: 'localhost',
    dialect: 'mysql'
});

sequelize.authenticate()
    .then(() => console.log('Database connected'))
    .catch((err: any) => console.log('Error: ' + err));

export default sequelize;