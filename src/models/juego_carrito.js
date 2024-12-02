import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego } from "./juego.js";
import { Carrito } from "./carrito.js";

export const Juego_carrito = sequelize.define('juegos_carritos_de_compras',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})

Juego.belongsToMany(Carrito, {
    through: Juego_carrito,
    foreignKey: 'juego_id',
    otherKey: 'carrito_de_compra_id'
})

Carrito.belongsToMany(Juego, {
    through: Juego_carrito,
    foreignKey: 'carrito_de_compra_id',
    otherKey: 'juego_id'
})