import { Genero } from "../models/genero.js"

const generos = (app) => {
    app.get('/generos', async (req,res) => {
        const misGeneros = await Genero.findAll()
        res.send(misGeneros)
    })
}

export default generos