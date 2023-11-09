// models/File.ts
import { Model, DataTypes } from 'sequelize';
import sequelize from '../config/db';

interface FileAttributes {
    id?: number; // Optional because it's only set by MySQL
    file_name: string;
    original_name: string;
    mime_type: string;
    file_size: number;
    upload_date: Date;
    file_path: string;
    user_uid?: string; // Optional becasue could be an attachment to a message
    messageId?: number; // Optional becasue could be an upload from a user
}

interface FileInstance extends Model<FileAttributes>, FileAttributes {}

const File = sequelize.define<FileInstance>('File', {
    id: { // Only set by MySQL
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    file_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    original_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    mime_type: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    file_size: {
        type: DataTypes.INTEGER,
        allowNull: false,
        validate: {
            isInt: true,
            max: 50000000, // 50 MB
        }
    },
    upload_date: {
        type: DataTypes.DATE,
        allowNull: false
    },
    file_path: {
        type: DataTypes.STRING,
        allowNull: false
    },
    user_uid: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    messageId: {
        type: DataTypes.INTEGER,
        allowNull: true,
    }
});

export default File;
