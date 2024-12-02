import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Resenia = sequelize.define('resenias',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    puntuacion: {
        type: DataTypes.INTEGER
    },
    comentario: {
        type: DataTypes.STRING
    },
    fecha: {
        type: DataTypes.DATE
    }
},{timestamps: false})