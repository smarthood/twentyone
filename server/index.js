
const express = require("express");
const http= require("http")
const mongoose = require("mongoose")

const app = express();
const port = process.env.PORT||8080
var server =http.createServer(app)
var io=require("socket.io")(server)
app.use(express.json())
const DB="mongodb+srv://smarthood:12345@cluster0.7yle3q8.mongodb.net/?retryWrites=true&w=majority";
io.on("connection",(socket)=>{
    console.log("connected!");
    socket.on("createRoom",({nickname})=>{
        console.log(nickname)
    })
});
 mongoose.connect(DB).then(()=>{
    console.log("connection successful!")
 }).catch((e)=>{
    console.log(e)
 })
server.listen(port,"0.0.0.0",()=>{
    console.log("server started and running on port: "+port)
})