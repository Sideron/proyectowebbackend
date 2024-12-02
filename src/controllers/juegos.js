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
    app.get('/juegos/:id', async (req,resp) => {
        const id = parseInt(req.params.id)
        try {
            const miJuego = await Juego.findAll({
                where:{
                    id:id
                }
            })
            res.send(miJuego[0])
        } catch (error) {
            res.status(500).send({
                error: error
            })
        }
    })
}

export default juegos