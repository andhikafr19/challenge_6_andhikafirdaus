const express = require('express')
const app = express()
const port = 3000
const {users_game} = require("./models")
const {users_game_biodata} = require("./models")
const {users_game_history} = require("./models")

app.use(express.json())

// User Game
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

//update user
app.put('/users/:id', async (req, res) => {
    const updateUser = await users_game.update({
        "username" : req.body.username,
        "password" : req.body.password,
    }, {
        where: {id: req.params.id}
    })
    res.status(201).json({
        "status" : "Oke",
        "message" : "Berhasil di Update"
    })
})

// delete user
app.delete('/users/:id', async (req, res) => {
    const deleteUser = await users_game.destroy({
        where: {id: req.params.id}
    })
    res.send({
        "status" : "OK",
        "message" : "Data berhasil di hapus"
    })
})

// BIODATA USER
//get data biodata user
app.get('/userbiodata', async (req, res) => {
    const biodata = await users_game_biodata.findAll()
    res.status(200).send(biodata)
})

//post biodata user
app.post('/userbiodata', async (req, res) => {
    const createBiodata = await users_game_biodata.create({
        "user_game_id" : req.body.user_game_id,
        "name" : req.body.name,
        "address" : req.body.address,
        "email" : req.body.email
    })
    return res.status(201).send(createBiodata)
})

//update biodata user
app.put('/userbiodata/:id', async (req, res) => {
    const updateBiodata = await users_game_biodata.update({
        "user_game_id" : req.body.user_game_id,
        "name" : req.body.name,
        "address" : req.body.address,
        "email" : req.body.email
    }, {
        where: {id: req.params.id}
    })
    res.status(201).json({
        "status" : "Oke",
        "message" : "Berhasil di Update"
    })
})

// delete biodata user
app.delete('/userbiodata/:id', async (req, res) => {
    const deleteBiodata = await users_game_biodata.destroy({
        where: {id: req.params.id}
    })
    res.send({
        "status" : "OK",
        "message" : "Data berhasil di hapus"
    })
})

//HISTORY USER

//get data history user
app.get('/userhistory', async (req, res) => {
    const history = await users_game_history.findAll()
    res.status(200).send(history)
})

//post history user
app.post('/userhistory', async (req, res) => {
    const createHistory = await users_game_history.create({
        "user_game_id" : req.body.user_game_id,
        "playtime" : req.body.playtime,
        "score" : req.body.score
    })
    return res.status(201).send(createHistory)
})

//update history user
app.put('/userhistory/:id', async (req, res) => {
    const updateHistory = await users_game_history.update({
        "user_game_id" : req.body.user_game_id,
        "playtime" : req.body.playtime,
        "score" : req.body.score
    }, {
        where: {id: req.params.id}
    })
    res.status(201).json({
        "status" : "Oke",
        "message" : "Berhasil di Update"
    })
})

// delete history user
app.delete('/userhistory/:id', async (req, res) => {
    const deleteHistory = await users_game_history.destroy({
        where: {id: req.params.id}
    })
    res.send({
        "status" : "OK",
        "message" : "Data berhasil di hapus"
    })
})


// listen port
app.listen(port, () => {
    console.log(`Server running on port ${port}`)
})