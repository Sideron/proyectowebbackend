import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego } from "./juego.js";
import { Genero } from "./genero.js";

export const Juego_genero = sequelize.define('juegos_generos',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})

Juego.belongsToMany(Genero, {
    through: Juego_genero,
    foreignKey: 'juego_id',
    otherKey: 'genero_id'
});

Genero.belongsToMany(Juego, {
    through: Juego_genero,
    foreignKey: 'genero_id',
    otherKey: 'juego_id'
});