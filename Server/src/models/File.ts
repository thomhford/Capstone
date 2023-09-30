// models/File.js
import {DataTypes} from 'sequelize';
import sequelize from '../../config/db';

import User from './User'; // Update the path to match your project structure

const File = sequelize.define('File', {
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
