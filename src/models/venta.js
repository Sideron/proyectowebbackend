import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego_venta } from "./juego_venta.js";

export const Venta = sequelize.define('ventas',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    fecha: {
        type: DataTypes.DATE
    }
},{timestamps: false})

Venta.hasMany(Juego_venta,{
    foreignKey: 'venta_id',
    sourceKey: 'id'
})

Juego_venta.belongsTo(Venta,{
    foreignKey: 'venta_id',
    targetKey: 'id'
})