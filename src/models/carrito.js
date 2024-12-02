import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego_carrito } from "./juego_carrito.js";

export const Carrito = sequelize.define('carritos_de_compras',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})

Carrito.hasMany(Juego_carrito,{
    foreignKey: 'carrito_de_compra_id',
    sourceKey: 'id'
})

Juego_carrito.belongsTo(Carrito,{
    foreignKey: 'carrito_de_compra_id',
    targetKey: 'id'
})