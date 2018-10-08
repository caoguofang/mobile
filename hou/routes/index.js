const express = require('express');
const pool = require('../../pool.js');
var router=express.Router();
//轮播1图片查询
router.get('/swipe1',(req,res)=>{
  var sql="SELECT id,title,img_url FROM swipe1";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//轮播2图片查询
router.get('/swipe2',(req,res)=>{
  var sql="SELECT id,title,img_url FROM swipe2";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//劲爆特价信息查询
router.get('/bargains',(req,res)=>{
  var sql ="SELECT id,title,img_url,price_old,price_new FROM bargains";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//旗舰店查询
router.get("/qijian",(req,res)=>{
  var sql="SELECT id,title,img_url FROM qijian";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//新品推荐
router.get('/NewProduct',(req,res)=>{
  var sql ="SELECT id,title,img_url,price_old,price_new FROM NewProduct";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//特卖专区
router.get('/SALE',(req,res)=>{
  var sql ="SELECT id,title,img_url,price_old,price_new FROM SALE";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//TOP专区
router.get('/top',(req,res)=>{
  var sql = "SELECT id,img_url,imgGif_url FROM TOP";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//手机配件专区
router.get('/ppj',(req,res)=>{
  var sql ="SELECT id,title,img_url,price_old,price_new FROM ppj";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
//品牌馆查询
router.get('/brands',(req,res)=>{
  var sql = "SELECT id,title,img_url FROM brands";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
module.exports=router;