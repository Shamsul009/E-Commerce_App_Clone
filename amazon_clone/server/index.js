//Create an api....

const express = require('express');
const mongoose = require('mongoose');

const {MongoClient} = require('mongodb');

const authRouter = require('./routes/auth')

const PORT = 3000;
const app = express();

const DB = "mongodb+srv://shamsularifeen101:flutter_clone_new@cluster0.vzq9lbj.mongodb.net/?retryWrites=true&w=majority";



mongoose.connect(DB).then(()=>{
  console.log("Connected");
}).catch((e)=>{
  console.log(e);
  console.log("Error");
})

app.use(express.json());
app.use(authRouter);


app.listen(PORT,"0.0.0.0",()=>{
    console.log(`Connected at port ${PORT}`);
} );
