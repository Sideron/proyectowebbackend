import { Sequelize } from "sequelize";

// Actualizar con la contraseña de tu db
export const sequelize = new Sequelize('baseDeDatosDePrueba','Grupo2PW','prograweb',{
    host: 'localhost',
    port: 5432,
    dialect: 'postgres'
})