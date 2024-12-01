import express from "express"
import cors from "cors"
import { sequelize } from "./database.js"
import { Juego } from "./models/juego.js"

const app = express()

await sequelize.sync({force:false})

app.get('/juegos', async (req, res) => {
    const juegos = await Juego.findAll()
    res.send(juegos)
})

app.listen(3001,()=>{
    console.log("Conectado en el puerto 3001")
})