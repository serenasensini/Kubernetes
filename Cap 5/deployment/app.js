// File utilizzato come esempio di applicazione Node.js per l'esempio legato al file d-healthcheck.yaml

'use strict';
const express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';// Appconst app = express();

const app = express()

app.get('/', (req, res) => {
  res.send('Hello world');
});

app.get('/healthcheck',(req,res)=> {
  res.send ("Health check passed");
});

app.listen(PORT, HOST);

console.log(`Running on http://${HOST}:${PORT}`);
