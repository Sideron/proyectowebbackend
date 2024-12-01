import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Cliente = sequelize.define('clientes',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})