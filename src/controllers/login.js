const login = (app) => {
    app.get("/login",(req,res) => {
        const {usuario,contrasenia} = req.body

        if(usuario == undefined || contrasenia == undefined){
            // Error por envio incorrecto de input
            const dataOutput = {
                error : "Input incorrecto. Revisar peticion"
            }
            resp.status(500).send(dataOutput)
            return
        }



        res.send(usuario)
    })
}

export default login