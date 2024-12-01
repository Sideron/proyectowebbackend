import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";

export const Usuario = sequelize.define('usuarios',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre:{
        type: DataTypes.STRING
    },
    contrasenia:{
        type: DataTypes.STRING
    }
},{timestamps: false})
