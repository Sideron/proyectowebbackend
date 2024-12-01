import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Juego = sequelize.define('juegos',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre:{
        type: DataTypes.STRING
    },
    precio_actual:{
        type: DataTypes.FLOAT
    },
    imagen_url: {
        type: DataTypes.STRING
    }
},{timestamps:false})