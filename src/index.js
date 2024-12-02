import express from "express"
import bodyParser from "body-parser"
import cors from "cors"
import { sequelize } from "./database.js"
import login from "./controllers/login.js"

const app = express()
app.use(bodyParser.json())
const port = 3001

try{
    await sequelize.sync({force:false})

    login(app)

    app.listen(port,()=>{
        console.log("Conectado en el puerto "+port)
    })

} catch (error) {
    console.log("Error: ",error)
}