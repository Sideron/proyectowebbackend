import { Sequelize } from "sequelize";

// Actualizar con la contraseña de tu db
export const sequelize = new Sequelize('projectdb','postgres','bruno',{
    host: 'localhost',
    dialect: 'postgres'
})