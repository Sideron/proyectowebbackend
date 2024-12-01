import express from "express"
import cors from "cors"

const app = express()

app.listen(3001,()=>{
    console.log("Conectado en el puerto 3001")
})