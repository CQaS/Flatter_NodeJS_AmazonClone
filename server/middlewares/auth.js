const jwt = require('jsonwebtoken')

const auth = async (req, res, next) => {
    try {
        const token = req.header('x-auth-token')
        if (!token) {
            return res.status(401).json({
                msg: 'Sin Autorizacion_token_falta'
            })
        }

        const verifi = jwt.verify(token, 'passwordKey')
        if (!verifi) return res.status(401).json({
            msg: 'Sin Autorizacion_token_invalido'
        })

        req.user = verifi.id
        req.token = token
        next()

    } catch (err) {
        res.status(500).json({
            error: err.message
        })
    }
}

module.exports = auth