import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Carrito = sequelize.define('carritos_de_compras',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})