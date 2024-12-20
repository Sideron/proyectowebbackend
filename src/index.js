import express from "express"
import bodyParser from "body-parser"
import cors from "cors"
import { sequelize } from "./database.js"
import usuarios from "./controllers/usuarios.js"
import juegos from "./controllers/juegos.js"
import generos from "./controllers/generos.js"

const app = express()
app.use(bodyParser.json())
app.use(cors());
const port = 3001

try{
    await sequelize.sync({force:false})

    usuarios(app)
    juegos(app)
    generos(app)

    app.listen(port,()=>{
        console.log("Conectado en el puerto "+port)
    })

} catch (error) {
    console.log("Error: ",error)
}