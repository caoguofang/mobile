const express = require('express');
const pool = require('../../pool.js');
var router=express.Router();
//分页列表
router.get("/list",(req,res)=>{
  var pno=req.query.pno;
  if(!pno) pno=1;
  var count =0;
  var pageCount=0;
  var pageSize=6;
  var offset=parseInt((pno-1)*pageSize);
  var kw=req.query.kw;
  var kws=kw.split(" ");
  kws.forEach((elem,i,arr)=>{
    arr[i]=`title LIKE '%${elem}%'`;
  });
  var where=kws.join(" and ");
  var sql=`SELECT id,title,price_old,price_new,stock,img_url FROM product WHERE ${where}`;
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    count=result.length;
    pageCount=Math.ceil(result.length/6);
  });
  sql+=`LIMIT ?,?`;
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    if(result.length>0)
      res.send({code:1,msg:result,count,pageCount});
    else
      res.send({code:0});
  });
});
router.get("/details",(req,res)=>{
  var id=req.query.id;
  var table=req.query.table;
  var sql=`SELECT * FROM ${table} WHERE id=?`;
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});
module.exports=router;