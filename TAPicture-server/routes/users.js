var express = require('express');
//引入连接池
const pool=require('../pool.js');
var router = express.Router();

// 8.完场用户登录
// (1)获取脚手架参数uname upwd
router.get("/login",(req,res)=>{
  var phone=req.query.phone;
  var upwd=req.query.upwd;
// (2)创建sql语句查询
  var sql="select * from wan_user where phone=? and upwd=md5(?) "
// (3)执行SQL语句
  pool.query(sql,[phone,upwd],(err,result)=>{
    if(err) throw err;
// (4)执行结果
// (5)判断查询是否成功
    if(result.length==0){
      res.send({code:-1,msg:"登录失败"})
    }else{
      // 保存用户id在session对象中
      req.session.uid=result[0].uid;
      res.send({code:1,msg:"登录成功"})
    }
// (6)将结果返回脚手架
 })
})
// http://127.0.0.1:3000/user/login?phone=15812345678&upwd=123456


module.exports = router;
