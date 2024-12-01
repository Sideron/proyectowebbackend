import { Sequelize } from "sequelize";

export const sequelize = new Sequelize('projectdb','postgres','bruno',{
    host: 'localhost',
    dialect: 'postgres'
})