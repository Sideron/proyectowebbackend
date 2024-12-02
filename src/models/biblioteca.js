import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego_biblioteca } from "./juego_biblioteca.js";

export const Biblioteca = sequelize.define("bibliotecas",{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps:false})

Biblioteca.hasMany(Juego_biblioteca,{
    foreignKey: 'biblioteca_id',
    sourceKey: 'id'
})
Juego_biblioteca.belongsTo(Biblioteca,{
    foreignKey: 'biblioteca_id',
    targetKey: 'id'
})