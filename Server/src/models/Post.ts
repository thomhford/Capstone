import { DataTypes,  Model, Sequelize } from "sequelize";

interface PostAttributes {
    id?: number; // required but automatically set by Sequelize
    title?: string;
    content?: string
    userId: string;
}

export interface PostInstance extends Model<PostAttributes>, PostAttributes {
    getFiles: () => Promise<PostInstance[]>;
}

export const createPostModel = (sequelize: Sequelize) => {
    return sequelize.define<PostInstance>('Post', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            allowNull: false
        },
        title: {
            type: DataTypes.STRING,
            allowNull: false
        },
        content: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        userId: {
            type: DataTypes.STRING,
            allowNull: false,
        }
    },{
        timestamps: true,
        paranoid: true,
        indexes: [{ fields: ['userId'] }]
    });
}