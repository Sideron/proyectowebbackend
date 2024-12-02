import { Juego } from "../models/juego.js"

const juegos = (app) => {
    app.get('/juegos', async (req,res) => {
        try {
            const listaJuegos = await Juego.findAll()
            res.send(listaJuegos)
        } catch (error) {
            res.status(500).send({
                error: error
            })
        }
        
    })
}

export default juegos