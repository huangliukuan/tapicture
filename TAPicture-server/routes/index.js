var express = require('express');
//引入连接池
const pool=require('../pool.js');
var router = express.Router();

// Mine用户接口
router.get('/mUser',(req,res)=>{
  var $uid=req.session.uid;
  var sql=" select uid,uname,avater,intro,wid,wuid,lwuid  from wan_user inner join wan_flw on uid=? and (lwuid=? or wuid=?);";
  pool.query(sql,[$uid,$uid,$uid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:-1,msg:"未登录"});
    }else{
      var att=0;
      var fan=0;
      for(var item of result){
        if(item.wuid==$uid){
          att++;
        }
        if(item.lwuid==$uid){
          fan++;
        }
      }
      result.splice(1);
      result[0].fan=fan;
      result[0].att=att;
      res.send({code:1,msg:"登录成功",data:result});
    }
  })
})

// Mine用户发表消息
router.get("/mMsg",(req,res)=>{
  var $uid=req.session.uid;
  var sql=" select fid,fintrd,lnum,fpic,ftime from wan_food where fuid=?";
  pool.query(sql,[$uid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:-1,msg:"未发表过"})
    }else{
      var sql2="select pid,ppic,puid  from wan_food inner join wan_pic on  fuid=? and puid=fpic";
       pool.query(sql2,[$uid],(err,result2)=>{
        if(err) throw err;
        for(var i=0,j=0;i<result.length&&j<result2.length;){
          if(result[i].fpic>result2[j].puid){
            i++;
          }else if(result[i].fpic>result2[j].puid){
            j++;
          }else{
            if(result[i].hasOwnProperty("fimg")){
            result[i].fimg=[].concat(result2[j].ppic,result[i].fimg);
              j++;
            }else{
              result[i].fimg=result2[j].ppic;
              j++;
            }
          }
        }
        res.send({code:1,data:result})
      })  
    }
  })
})
// 
router.get('/index',(req,res)=>{
  var sql="select uid,uname,fintrd,ftime,lnum,fpic,avater,fname from wan_food inner join wan_user on fuid=uid order by ftime desc";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    var sql2=" select pid,ppic,puid from wan_food inner join wan_pic on puid=fpic order by puid desc";
    pool.query(sql2,(err,result2)=>{
     if(err) throw err;
    for(var i=0,j=0;i<result.length&&j<result2.length;){
      if(result[i].fpic>result2[j].puid){
        i++;
      }else if(result[i].fpic>result2[j].puid){
        j++;
      }else{
        if(result[i].hasOwnProperty("fimg")){
        result[i].fimg=[].concat(result2[j].ppic,result[i].fimg);
          j++;
        }else{
          result[i].fimg=result2[j].ppic;
          j++;
        }
      }
    }
    res.send({code:1,data:result})
    })  
  })
})
module.exports = router;
