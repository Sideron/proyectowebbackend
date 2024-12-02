import express from "express"
import cors from "cors"
import { sequelize } from "./database.js"
import { Juego } from "./models/juego.js"

const app = express()
const port = 3001

try{
    await sequelize.sync({force:false})

    app.get('/juegos', async (req, res) => {
        const juegos = await Juego.findAll()
        res.send(juegos)
    })

    app.listen(port,()=>{
        console.log("Conectado en el puerto "+port)
    })

} catch (error) {
    console.log("Error: ",error)
}