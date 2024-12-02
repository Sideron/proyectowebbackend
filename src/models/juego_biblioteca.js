import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Juego_biblioteca = sequelize.define('juegos_bibliotecas',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})
