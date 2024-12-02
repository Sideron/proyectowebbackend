import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Juego_venta = sequelize.define('juegos_ventas',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})