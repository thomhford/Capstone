// models/User.ts
import {DataTypes, Model, Sequelize} from 'sequelize';

interface UserAttributes {
    firstName: string;
    lastName: string;
    email: string;
    uid: string;
}

interface UserInstance extends Model<UserAttributes>, UserAttributes {}

// Modify your model definition to accept a Sequelize instance as an argument
export const createUserModel = (sequelize: Sequelize) => {
    return sequelize.define<UserInstance>('User', {
        firstName: {
            type: DataTypes.STRING,
            allowNull: false
        },
        lastName: {
            type: DataTypes.STRING,
            allowNull: false
        },
        email: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true,
            validate: {
                isEmail: true
            }
        },
        uid: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true
        }
    });
};

// Allow for test database but use the real database connection by default
const sequelize = require('../config/db').default;
export default createUserModel(sequelize);
