const express = require("express");

const authRouter = express.Router();

const User = require('../models/user');

const bcryptjs = require('bcryptjs');

authRouter.post('/api/signup',async (req,res)=>{
    try{
        const {name,email,password} = req.body;

    const existingUser =await User.findOne({email});
    if(existingUser){
        return res.status(400).json({msg:"User with same email already exists!"}); 
    }

    const hashedpassword = await bcryptjs.hash(password,8);

    let user = new User({
        email,
        name,
        password:hashedpassword
    });

    res.json(user);
    
    user = await user.save();
    res.send(user);

    }catch(e){
        res.status(500).json({error: e.message});
    }

    
})

module.exports = authRouter;