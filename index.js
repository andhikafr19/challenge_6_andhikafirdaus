const express = require('express')
const app = express()
const port = 3000
const {users_game} = require("./models")

app.use(express.json())

//get all user
app.get('/users', async (req, res) => {
    const users = await users_game.findAll()
    res.status(200).send(users)
})

//post user
app.post('/users', async (req, res) => {
    const createUser = await users_game.create({
        "username" : req.body.username,
        "password" : req.body.password
    })
    return res.status(201).send(createUser)
})

app.listen(port, () => {
    console.log(`Server running on port ${port}`)
})