const express = require('express');
const pool = require('../../pool.js');
var router=express.Router();
router.post('/add',(req,res)=>{
  var {uid,pid,table,count,price,img_url,title}=req.body;
  var sql=`INSERT INTO cart(uid,pid,m_table,m_count,price,img_url,title,alive) VALUES(?,?,?,?,?,?,?,1);`;
  pool.query(sql,[uid,pid,table,count,price,img_url,title],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"添加购物车成功！"});
  });
});
router.get("/list",(req,res)=>{
  var uid=req.query.uid;
  var sql="SELECT id,pid,m_table,m_count,price,img_url,title FROM cart WHERE uid=? AND alive=1";
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result});
  });
});

router.get("/isHas",(req,res)=>{
  var {uid,pid,table}=req.query;
  var sql="SELECT id FROM cart WHERE uid=? AND pid=? AND m_table=?;";
  pool.query(sql,[uid,pid,table],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1});
    }else{
      res.send({code:0});
    }
  });
});

router.post("/updateCart",(req,res)=>{
  var {uid,pid,table,count}=req.body;
  var sql="UPDATE cart SET m_count=? WHERE uid=? AND pid=? AND m_table=?;";
  pool.query(sql,[count,uid,pid,table],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"更新成功！"});
  });
});

//删除数据
router.get("/delete",(req,res)=>{
  var id=req.query.id;
  var sql="UPDATE cart SET alive=0 WHERE id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"删除成功！"});
  });
});



module.exports=router;
