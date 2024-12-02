import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Juego_genero } from "./juego_genero.js";
import { Resenia } from "./resenia.js";
import { Juego_biblioteca } from "./juego_biblioteca.js";
import { Juego_venta } from "./juego_venta.js";
import { Juego_carrito } from "./juego_carrito.js";

export const Juego = sequelize.define('juegos',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre:{
        type: DataTypes.STRING
    },
    descripcion:{
        type: DataTypes.STRING
    },
    precio_actual:{
        type: DataTypes.FLOAT
    },
    imagen_url: {
        type: DataTypes.STRING
    },
    desarrollador:{
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

Juego.hasMany(Resenia,{
    foreignKey: 'juego_id',
    sourceKey: 'id'
})

Resenia.belongsTo(Juego,{
    foreignKey: 'juego_id',
    targetKey: 'id'
})

Juego.hasMany(Juego_biblioteca,{
    foreignKey: 'juego_id',
    sourceKey: 'id'
})

Juego_biblioteca.belongsTo(Juego,{
    foreignKey: 'juego_id',
    targetKey: 'id'
})

Juego.hasMany(Juego_venta,{
    foreignKey: 'juego_id',
    sourceKey: 'id'
})

Juego_venta.belongsTo(Juego,{
    foreignKey: 'juego_id',
    targetKey: 'id'
})

Juego.hasMany(Juego_carrito,{
    foreignKey: 'juego_id',
    sourceKey: 'id'
})

Juego_carrito.belongsTo(Juego,{
    foreignKey: 'juego_id',
    targetKey: 'id'
})