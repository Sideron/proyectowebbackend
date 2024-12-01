import { Sequelize } from "sequelize";

// Actualizar con la contraseña de tu db
export const sequelize = new Sequelize('baseDeDatosDePrueba','Grupo2PW','bruno',{
    host: 'localhost',
    dialect: 'postgres'
})