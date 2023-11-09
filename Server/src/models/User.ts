// models/User.ts
import {DataTypes, Model, Sequelize} from 'sequelize';
import { FileInstance } from './File';
import { MessageInstance } from './Message';

interface UserAttributes {
    firstName: string;
    lastName: string;
    email: string;
    uid: string;
}

interface UserInstance extends Model<UserAttributes>, UserAttributes {
    // Instance methods for testing associations
    getFiles: () => Promise<FileInstance[]>;
    getSentMessages: () => Promise<MessageInstance[]>;
}

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
