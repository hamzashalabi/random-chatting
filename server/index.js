const express = require("express");
const mongoose = require("mongoose");
const http = require("http");

const app = express();
const port = process.env.PORT || 3000;

const server = http.createServer(app);
const io = require("socket.io")(server);

io.on('connection', (socket) => {
    console.log("socket connection success");
});

app.use(express.json());

const DB = "mongodb+srv://hamzashalabi111:hamza123@cluster0.io4ts.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

mongoose.connect(DB).then(() => {
    console.log("mongo connection success");
}).catch((e) => {
    console.log(e);
});

server.listen(port, '0.0.0.0', () => {
    console.log("server connection success");
});
