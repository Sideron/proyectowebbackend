import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego_genero } from "./juego_genero.js";

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

Juego.hasMany(Juego_genero,{
    foreignKey: 'juego_id',
    sourceKey: 'id'
})

Juego_genero.belongsTo(Juego,{
    foreignKey: 'juego_id',
    targetKey: 'id'
})