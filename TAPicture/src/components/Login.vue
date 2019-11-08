<template>
<div class="bjlogin" :style="[canWidth,canHeight]">
  <div class="login">
    <h2>小饭碗</h2>
    <div>
      <mt-field class="bt1 bt2" label="手机号" placeholder="请输入手机号" type="tel" v-model="phone" :attr="{autofocus:true}"></mt-field>
      <!--2:密码输入框-->
      <mt-field class="bt1 bt2" type="password" label="密码" placeholder="请输入密码" v-model="upwd"></mt-field>
      <mt-field class="bt1 bt2" label="验证码" placeholder="请输入验证码" type="tel" v-model="code" :attr="{autofocus:true}"></mt-field>
      <canvas id="canvas" :width="width" :height="height" :style="{width:width,height:height}" @click="draw(show_num)"></canvas>
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
     code:"",
     canWidth:{height:window.screen.width+'px'},
     canHeight:{height:window.screen.height+'px'},
     show_num:[],
     width:"150px",
     height:"50px"
    }
  },
  methods:{
    login(){
      var code=this.code.toLowerCase()
      var num=this.show_num.join("");
      if(code==""){
        this.$toast({message:"请输入验证码!"});
        return;
      }else if(code!=num){
        this.$toast({message:"验证码错误!"});
        return;
      }
      //功能:完成用户登录操作
     //1:获取用户输入用户名
     var u = this.phone;
     //2:获取用户输入密码
     var p = this.upwd;
     //3:创建正则表达式 3~12 字母数字
     var reg = /^[a-z0-9]{3,12}$/i;
     //4:验证用户名
     if(reg.test(u)==false){
      //5:验证不成功 提示消息
      this.$messagebox("手机号格式不正确");
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
    },
    draw(show_num) {
        var cvs = document.getElementById("canvas");
        var c_width=cvs.width
        var c_height=cvs.height
        //获取到canvas的对象，演员
        var ctx = cvs.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
        ctx.fillRect(190,350,10,10)

        cvs.width = c_width;
        cvs.height = c_height;
        var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
        var aCode = sCode.split(",");
        var aLength = aCode.length;//获取到数组的长度
        
        for (var i = 0; i < 4; i++) {  //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            // var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var deg = Math.random() - 0.5; //产生一个随机弧度
            var txt = aCode[j];//得到随机的一个内容
            this.show_num[i] = txt.toLowerCase();
            var x = 15 + i * 30;//文字在canvas上的x坐标
            var y = 30 + Math.random() * 8;//文字在canvas上的y坐标
            ctx.font = "bold 30px 微软雅黑";
            ctx.translate(x, y);
            ctx.rotate(deg);

            ctx.fillStyle = this.randomColor();
            ctx.fillText(txt, 0, 0);

            ctx.rotate(-deg);
            ctx.translate(-x, -y);
        }
        for (var i = 0; i <= 5; i++) { //验证码上显示线条
            ctx.strokeStyle = this.randomColor();
            ctx.beginPath();
            ctx.moveTo(Math.random() * c_width, Math.random() * c_height);
            ctx.lineTo(Math.random() * c_width, Math.random() * c_height);
            ctx.stroke();
        }
        for (var i = 0; i <= 30; i++) { //验证码上显示小点
            ctx.strokeStyle = this.randomColor();
            ctx.beginPath();
            var x = Math.random() * c_width;
            var y = Math.random() * c_height;
            ctx.moveTo(x, y);
            ctx.lineTo(x + 1, y + 1);
            ctx.stroke();
        }
    },
    //得到随机的颜色值
    randomColor() {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    },

  },
  mounted(){
    this.draw()
  }
}

</script>

<style scoped>
#canvas{
  z-index: 1000;
  cursor: pointer;
  background-color: #ccc;
}
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
  margin-top:25%;
  width: 100%; 
  text-align: center;
}
.login div{
 width: 75%;
 margin:0 auto;
}
h2{
  font-size: 80px;
  margin-bottom: 50px;
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