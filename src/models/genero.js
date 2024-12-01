import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego_genero } from "./juego_genero.js";

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

Genero.hasMany(Juego_genero, {
    foreignKey: 'genero_id',
    sourceKey: 'id'
})

Juego_genero.belongsTo(Genero, {
    foreignKey: 'genero_id',
    targetKey: 'id'
})