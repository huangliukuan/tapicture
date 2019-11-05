<template>
<div class="bjlogin" :style="[canWidth,canHeight]">
  <div class="login">
    <h2>小饭碗</h2>
    <div>
      <mt-field class="bt1 bt2" label="手机号" placeholder="请输入手机号" v-model="phone" :attr="{autofocus:true}"></mt-field>
      <!--2:密码输入框-->
      <mt-field class="bt1 bt2" label="密码" placeholder="请输入密码" v-model="upwd"></mt-field>
      <!--3:登录按钮-->
      <mt-button class="bt1 " type="danger" size="large" @click="login">登录</mt-button>
      </div>
  </div>
  <div class="iconfont">
          <a href=""><img src="../assets/image/Login/QQ.png"></a>
          <a href=""><img src="../assets/image/Login/weibo.png"></a>
          <a href=""><img src="../assets/image/Login/weixin.png"></a>
    </div>
</div>
</template>

<script>
export default {
  data(){
    return{
     phone:"",
     upwd:"",
     canWidth:{height:window.screen.width+'px'},
     canHeight:{height:window.screen.height+'px'}
    }
  },
  methods:{
    login(){
       //功能:完成用户登录操作
     //1:获取用户输入用户名
     var u = this.phone;
     //2:获取用户输入密码
     var p = this.upwd;
     console.log("1:"+u+"_"+p);
     //3:创建正则表达式 3~12 字母数字
     var reg = /^[a-z0-9]{3,12}$/i;
     //4:验证用户名
     if(reg.test(u)==false){
      console.log("2:");
      //5:验证不成功 提示消息
      this.$messagebox("用户名格式不正确");
      return;
     }
     //6:验证密码
     if(reg.test(p)==false){
      //7:验证不成功 提示消息
      this.$messagebox("","密码格式不正确");
      return;
     }
     //8:发送ajax请求
     var url = "user/login";
     var obj = {phone:u,upwd:p};
     this.axios.get(
       url,
       {params:obj}
     ).then(res=>{
       console.log(res.data.code);
       if(res.data.code<0){
         this.$messagebox("消息","手机号或密码有误");
       }else{
         //跳转Product组件 //9:47
         this.$router.push("/index");
       }
     });
    }
  }
}

</script>

<style scoped>
.bjlogin{
    background: url(../assets/image/Login/timg.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%; 
    box-sizing: border-box;
  }
  .bjlogin:before{
    display: table;
    content: "";
  }
.login{
  margin-top:35%;
  width: 100%; 
  text-align: center;
}
.login div{
 width: 80%;
 margin:0 auto;
}
h2{
  font-size: 80px;
  margin-bottom: 100px;
  font-family: STXingkai;
  text-align: center;
  text-indent:30px;
  line-height: 80px;
  font-weight:bolder;
  background-image:-webkit-linear-gradient(top,rgb(255, 255, 255),#dac9c9,rgb(214, 155, 155)); 
  -webkit-background-clip:text; 
  -webkit-text-fill-color:transparent; 
}
.bt1{
  margin:20px 0px;
  border-radius: 10px;
}
.iconfont{
  display: flex;
  width: 100%;
  justify-content: center;
 margin-bottom:10%;
 overflow: hidden;
  }
.iconfont img{
  width: 50px;
  margin:25px;
}
</style>