import { Administrador } from "../models/admin.js"
import { Cliente } from "../models/cliente.js"
import { Usuario } from "../models/usuario.js"

const usuarios = (app) => {
    app.get("/usuarios",async(req,resp) => {
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
    app.get("/usuarios/:id",async (req, resp) => {
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
    app.post('/usuarios', async (req,resp) => {
        const {usuario,contrasenia} = req.body

        if(usuario == undefined || contrasenia == undefined){
            // Error por envio incorrecto de input
            const dataOutput = {
                error : "El nombre o contraseña deben contener algo"
            }
            resp.status(500).send(dataOutput)
            return
        }
        if(usuario.length > 16 || contrasenia.length > 16){
            const dataOutput = {
                error : "El nombre o contraseña deben tener como maximo 16 caracteres"
            }
            resp.status(500).send(dataOutput)
            return
        }

        const listaUsuarios = await Usuario.findAll({
            where:{
                nombre: usuario
            }
        })

        if(listaUsuarios.length >= 1){
            const dataOutput = {
                error : "Este nombre ya existe"
            }
            resp.status(400).send(dataOutput)
            return
        }

        try {
            const myUser = await Usuario.create({
                nombre: usuario,
                contrasenia: contrasenia
            })
            await Cliente.create({
                usuario_id: myUser.dataValues.id
            })
            console.log(myUser.dataValues.id)
        } catch (error) {
            resp.status(400).send({
                error : `Error: ${error.name}`
            })
            return
        }
        
        resp.send({
            error : ""
        })


    })
    app.post('/admin', async (req,resp) => {
        const {usuario,contrasenia} = req.body

        if(usuario == undefined || contrasenia == undefined){
            // Error por envio incorrecto de input
            const dataOutput = {
                error : "El nombre o contraseña deben contener algo"
            }
            resp.status(500).send(dataOutput)
            return
        }
        if(usuario.length > 16 || contrasenia.length > 16){
            const dataOutput = {
                error : "El nombre o contraseña deben tener como maximo 16 caracteres"
            }
            resp.status(500).send(dataOutput)
            return
        }

        const listaUsuarios = await Usuario.findAll({
            where:{
                nombre: usuario
            }
        })

        if(listaUsuarios.length >= 1){
            const dataOutput = {
                error : "Este nombre ya existe"
            }
            resp.status(400).send(dataOutput)
            return
        }

        try {
            const myUser = await Usuario.create({
                nombre: usuario,
                contrasenia: contrasenia
            })
            await Administrador.create({
                usuario_id: myUser.dataValues.id
            })
            console.log(myUser.dataValues.id)
        } catch (error) {
            resp.status(400).send({
                error : `Error: ${error.name}`
            })
            return
        }
        
        resp.send({
            error : ""
        })


    })
}

export default usuarios