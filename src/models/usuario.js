import { DataTypes } from "sequelize";
import { sequelize } from "../database.js";
import { Cliente } from "./cliente.js";
import { Administrador } from "./admin.js";

export const Usuario = sequelize.define('usuarios',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nombre:{
        type: DataTypes.STRING
    },
    contrasenia:{
        type: DataTypes.STRING
    }
},{timestamps: false})

Usuario.hasMany(Cliente, {
    foreignKey: 'usuario_id',
    sourceKey: 'id'
})

Cliente.belongsTo(Usuario, {
    foreignKey: 'usuario_id',
    targetKey: 'id'
})

Usuario.hasMany(Administrador, {
    foreignKey: 'usuario_id',
    sourceKey: 'id'
})

Administrador.belongsTo(Usuario, {
    foreignKey: 'usuario_id',
    targetKey: 'id'
})