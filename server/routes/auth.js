const express = require('express')
const User = require('../models/user')
const encriptar = require('bcryptjs')

const authRouter = express.Router()

authRouter.get('/user', (req, res) => {
    res.json({
        msg: 'YOOOO'
    })
})

authRouter.post('/api/signup', async (req, res) => {
    try {

        const {
            name,
            email,
            password
        } = req.body

        const existUser = await User.findOne({
            email
        })

        if (existUser) {
            return res.status(400).json({
                msg: 'E-mail ya existe!'
            })
        }

        const passHash = await encriptar.hash(password, 8)
        let user = new User({
            email,
            name,
            password: passHash
        })

        user = await user.save()
        res.json(user)

    } catch (e) {
        res.status(500).json({
            error: e.message
        })
    }
})

module.exports = authRouter