// models/File.js
import { Model, DataTypes } from 'sequelize';
import sequelize from '../../config/db';
import User from './User';

interface FileAttributes {
    file_id?: number; // file_id is optional here as it will be auto generated by Sequelize
    file_name: string;
    original_name: string;
    mime_type: string;
    file_size: number;
    upload_date: Date;
    file_path: string;
    user_uid: string;
}

interface FileInstance extends Model<FileAttributes>, FileAttributes {}

const File = sequelize.define<FileInstance>('File', {
    file_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
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
        allowNull: false
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
        allowNull: false,
        references: {
            model: User,
            key: 'uid'
        }
    }
});

File.belongsTo(User, { foreignKey: 'user_uid', targetKey: 'uid' });

export default File;
