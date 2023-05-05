const express = require('express')
const authRouter = require('./routes/auth')
const mongoose = require('mongoose')

const PORT = 3000
const pass = "c3VIxtfUl6K3ckct"
const DB = `mongodb+srv://cqasss:${pass}@cluster0.tzmfszj.mongodb.net/?retryWrites=true&w=majority`

const app = express()

app.use(express.json())
app.use(authRouter)

mongoose
    .connect(DB)
    .then(() => {
        console.log('Conectado')
    }).catch((e) => {
        console.log(e)
    })

app.listen(PORT, '0.0.0.0', () => {
    console.log('Server en PORT', PORT)
})