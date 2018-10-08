const express = require('express');
const pool = require('../../pool.js');
var router=express.Router();
//手机号重复验证
router.get("/isPhone",(req,res)=>{
  var {phone}=req.query;
  var sql="SELECT id FROM user WHERE phone=?";
  pool.query(sql,[phone],(err,result)=>{
    if(err) throw err;
    if(result.length>0)
      res.send({ok:1});
    else
      res.send({ok:0});
  });
});
//用户注册
router.post('/register',(req,res)=>{
  var {uName,uPwd,phone,Email}=req.body;
  var sql="INSERT INTO user(uName,uPwd,phone,Email) VALUES(?,?,?,?)";
  pool.query(sql,[uName,uPwd,phone,Email],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"注册成功，确认后跳转到登录页面！"});
  });
});
//用户登录
router.get('/login',(req,res)=>{
  var {phone,uPwd}=req.query;
  var sql="SELECT * FROM user WHERE phone=? AND uPwd=?";
  pool.query(sql,[phone,uPwd],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      req.session.id=result[0].id;
      res.send({code:1,id:result[0].id});
    }
    else
      res.send({code:0,msg:"用户名或密码错误,请重新输入！"});
  });
});
//是否登录
router.get('/isLogin',(req,res)=>{
    var sql="SELECT uName FROM user WHERE id=?";
    pool.query(sql,[req.query.id],(err,result)=>{
      if(err) throw err;
     res.send({code:1,uName:result[0].uName});
    });
});

module.exports=router;