// testDb.ts
import { Sequelize } from 'sequelize';
import 'dotenv/config';

// Get environment variables for database connection
const dbDatabaseTEST = process.env.DB_DATABASE_TEST;
const dbUsernameTEST = process.env.DB_USERNAME_TEST;
const dbPasswordTEST = process.env.DB_PASSWORD_TEST;

// Check if all environment variables are set
if (!dbDatabaseTEST || !dbUsernameTEST || !dbPasswordTEST) {
	throw new Error('Please define database, username, and password in .env file');
}

export const testDb = new Sequelize(dbDatabaseTEST, dbUsernameTEST, dbPasswordTEST, {
  dialect: 'mysql',
  host: 'localhost'
});