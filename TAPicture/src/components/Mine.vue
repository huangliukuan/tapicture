<template>
<div>
  <!-- 头部 -->
  <div class="mhead">
    <!-- 三横线 -->
    <div class="hleft">
      <router-link class="lImg" to="javascript:;">
        <img src="../assets/image/three.png" alt="设置">
      </router-link>
    </div>  
    <!-- 昵称和碗号 -->
    <div class="hcenter">
      <p class="mhname">乐观开朗积极向上</p>
      <p class="mhid">
        <span>碗号:</span>
        <span>234234342</span>
      </p>
    </div>
    <!-- 分享 -->
    <div class="hright">
      <router-link to="javascript:;">
        <img src="../assets/image/share.png" alt="分享">
      </router-link>
    </div>
  </div> 
  <!-- 用户信息 -->
  <div class="muser">
    <!-- 头像 -->
    <div class="uleft">
      <div class="uImg">
       <img src="../assets/image/dingding.png" alt="用户头像"> 
      </div>
    </div>
    <!-- 详细信息-->
    <div class="infor">
      <!-- 关注点赞 -->
      <div class="unum">
        <div class="nleft">
          <p>9</p>
          <p>关注</p>
        </div>
        <div class="ncenter">
          <p>14</p>
          <p>粉丝</p>
        </div>
        <div class="nright">
          <p>200</p>
          <p>点赞</p>
        </div>
      </div>
      <!-- 资料编辑 -->
      <div class="ueidt">
        <router-link class="edit"
        to="javascript:;">
          编辑资料
        </router-link>
      </div>
    </div>
    <p class="intro">这个人很懒,什么也没写</p>
  </div>
  <!-- 自拍内容 -->
  <div class="heppy">
    <div class="htext">
      <!-- 用户信息 -->
      <div class="htitle">
        <div class="htImg">
          <img src="../assets/image/dingding.png" alt="头像">
        </div>
        <div class="htNT">
          <div class="htName">
            <p>乐观开朗积极向上</p>
          </div>
          <div class="htTime">
            <span>10:55</span>
          </div>
        </div>
      </div>
      <!-- 美食图片 -->
      <div class="hbody">
        <div>
          <p>今天美美哒!!!好开心在这个店里每餐一段啊啊啊啊啊啊啊啊啊啊啊</p>
        </div>
        <div class="hbImg">
            <img v-for="(item,i) in 6" :key="i" src="../assets/image/1.jpg" alt="美食图片">
        </div>
      </div>
      <!-- 底部 -->
      <div class="hfoot">
        <div class="hfImg">
          <img src="../assets/image/heart.png" alt="点赞">
          <span>187</span>
        </div>
      </div>
    </div>
  </div>
</div>
</template>
<script>
export default {
  data(){
    return{
      show:false,
      active:"",
    }
  },
  methods: {
    showPopup() {
      this.show = true;
    }
  }
}
</script>
<style scoped>
/* 头部外层 */
.mhead{
  width: 100%;
  height:64px;
  display: flex;
  justify-content: space-around;
  align-items: center;
  border-bottom:1px solid #ddd;
}
/* 左右两边二级div */
.mhead>.hleft,
.mhead>.hright{
  width:36px;
  height: 36px;
}
/* 头部左右两个图片 */
.mhead>.hleft img,
.mhead>.hright img{
  width: 100%;
}
/* 头部昵称 */
.mhead>.hcenter>p{
  margin:0 0 5px;
  font-size:16px;
  font-weight: bold;
}
/* 头部碗号 */
.mhead>.hcenter>p:last-child{
  color:#aaa;
  font-size: 15px;
}
/* 用户信息div */
.muser{
  width:100%;
  height:148px;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  border-bottom:1px solid #aaa; 
}
/* 用户头像 */
.muser>.uleft{
  width:30%;
  height:100px;
}
.muser>.uleft>.uImg{
  width: 60px;
  height: 60px;
  margin:20px auto;
}
.muser>.uleft>.uImg>img{
  width: 100%;
  border:1px solid #aaa;
  border-radius: 50%;
}
/* 详情信息 */
.muser>.infor{
  width: 70%;
  height:100px;
}
/* 关注点赞 */
.muser>.infor>.unum{
  display: flex;
  justify-content: space-around;
  padding: 10px 0;
}
.muser>.infor>.unum p{
  margin: 0;
  padding: 3px;
}
.muser .edit{
  display: block;
  width: 100%;
  height: 29px;
  line-height: 29px;
  text-decoration: none;
  border: 1px solid #aaa;
  border-radius:29px;
  color:#333;
  text-align: center;
}
/* 简介 */
.muser>.intro{
  width:100%;
  text-align: center;
}
/*  */
.heppy>.hhead>h3{
  text-align: center;
  border-bottom:1px solid #aaa;
  margin: 0;
  padding: 15px;
  box-sizing: border-box;
}
/* 美好一刻内容 */
.htext{
  border:1px solid #ddd;
  border-radius: 10px;
  margin-top:10px;
}
/* 用户信息 */
.htext>.htitle{
  display: flex;
  justify-content: space-between;
  flex-wrap:wrap;
  border-bottom:1px solid #aaa;
  padding: 10px;
  margin: 0 10px;
}
/* 信息各div所占宽度 */
.htext>.htitle>.htImg{
  width:15%;
  height: 48px;
  padding-top:10px;
  box-sizing: border-box;
}
.htext>.htitle>.htNT{
  width: 85%;
  height: 48px;
}
/* 头像 */
.htext>.htitle>.htImg>img{
  width: 36px;
  border: 1px solid #aaa;
  border-radius: 50%;
}
/* 昵称 */
.htext>.htitle>.htNT>.htName>p{
  width: 100px;
  margin: 0;
  line-height: 24px;
  font-size: 14px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #333;
}
/* 时间 */
.htext>.htitle>.htNT>.htTime{
  line-height: 24px;
  color: #888;
}
/* 美食图片 */
.hbody{
  width: 100%;
  padding: 10px;
  box-sizing: border-box;
}
.hbody>.hbImg{
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
.hbody>.hbImg img{
  width:30%;
  box-sizing: border-box;
}
/* 底部 */
.hfoot{
  width: 100%;
  height: 20px;
  position: relative;
}
.hfoot>.hfImg{
  width: 20%;
  height: 20px;
  position: absolute;
  right:15px;
}
.hfoot>.hfImg>img{
/* 改变图片底层开始位置 默认基线 */
  vertical-align: bottom;
}
</style>