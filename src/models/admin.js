import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Administrador = sequelize.define('administradores',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})