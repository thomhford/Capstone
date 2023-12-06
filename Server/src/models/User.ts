// models/User.ts
import {DataTypes, Model, Sequelize} from 'sequelize';
import { MessageInstance } from './Message';
import {PostInstance} from "./Post";

interface UserAttributes {
    firstName: string;
    lastName: string;
    email: string;
    uid: string;
    photoUrl?: string;
}

export interface UserInstance extends Model<UserAttributes>, UserAttributes {
    // Instance methods for testing associations
    getPosts: () => Promise<PostInstance[]>;
    getSentMessages: () => Promise<MessageInstance[]>;
    getReceivedMessages: () => Promise<MessageInstance[]>;
    updatedAt: Date;
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
        },
        photoUrl: {
            type: DataTypes.STRING,
            allowNull: true
        }
    }, {
        timestamps: true,
        paranoid: true,
        indexes: [{ fields: ['uid'] }]
    });
};
