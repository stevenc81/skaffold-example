const express = require('express')
const { echo } = require('./utils');
const app = express()
const port = 8080

app.get('/', (req, res) => res.send(echo('Hello Skaffold!')))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
