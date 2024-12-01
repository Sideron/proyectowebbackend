import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Juego_genero = sequelize.define('juegos_generos',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})