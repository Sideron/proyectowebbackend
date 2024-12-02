import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Juego_carrito = sequelize.define('juegos_carritos_de_compras',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})