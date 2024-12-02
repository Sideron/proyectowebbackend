import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Genero = sequelize.define('generos',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre:{
        type: DataTypes.STRING
    }
},{timestamps: false})