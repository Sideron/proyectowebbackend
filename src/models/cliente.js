import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Resenia } from "./resenia.js";
import { Biblioteca } from "./biblioteca.js";
import { Venta } from "./venta.js";

export const Cliente = sequelize.define('clientes',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},{timestamps: false})

Cliente.hasMany(Resenia,{
    foreignKey: 'cliente_id',
    sourceKey: 'id'
})

Resenia.belongsTo(Cliente,{
    foreignKey: 'cliente_id',
    targetKey: 'id'
})

Cliente.hasMany(Biblioteca,{
    foreignKey: 'cliente_id',
    sourceKey: 'id'
})

Biblioteca.belongsTo(Cliente,{
    foreignKey: 'cliente_id',
    targetKey: 'id'
})

Cliente.hasMany(Venta,{
    foreignKey: 'cliente_id',
    sourceKey: 'id'
})

Venta.belongsTo(Cliente,{
    foreignKey: 'cliente_id',
    targetKey: 'id'
})