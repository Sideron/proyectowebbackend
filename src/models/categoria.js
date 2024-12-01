import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego } from "./juego.js";

export const Categoria = sequelize.define('categorias',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre:{
        type: DataTypes.STRING
    }
},{timestamps: false})

Categoria.hasMany(Juego, {
    foreignKey: 'categoria_id',
    sourceKey: 'id'
})

Juego.belongsTo(Categoria, {
    foreignKey: 'categoria_id',
    targetKey: 'id'
})