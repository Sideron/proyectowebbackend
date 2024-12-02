import { Usuario } from "../models/usuario.js"

const login = (app) => {
    app.get("/login",async(req,resp) => {
        const {usuario,contrasenia} = req.body

        if(usuario == undefined || contrasenia == undefined){
            // Error por envio incorrecto de input
            const dataOutput = {
                error : "Input incorrecto. Revisar peticion"
            }
            resp.status(500).send(dataOutput)
            return
        }

        const listaUsuarios = await Usuario.findAll({
            where:{
                nombre: usuario,
                contrasenia: contrasenia
            }
        })

        if (listaUsuarios.length > 0) {
            // Login exitoso
            const dataOutput = {
                error : ""
            }
            resp.send(listaUsuarios[0])
        }else {
            // Error login
            const dataOutput = {
                error : "Error en el login."
            }
            resp.status(400).send(dataOutput)
        }
    })
    app.get("/login/:id",async (req, resp) => {
        const id = req.params.id
        const miusuario = await Usuario.findAll({
            where:{
                id
            }
        })
        if (miusuario.length > 0) {
            // Login exitoso
            const dataOutput = {
                error : ""
            }
            resp.send(miusuario[0])
        }else {
            // Error login
            const dataOutput = {
                error : "Error en el login."
            }
            resp.status(400).send(dataOutput)
        }
    })
}

export default login