<template>
<div>
  <!-- 消息标题 -->
    <div class="mTitle">
      <span class="tText">消息</span>
      <img class="tImg" src="../assets/image/message.png" alt="">
    </div>
    <!-- 个标题 -->
    <div class="mCenter">
      <div class="mCent">
        <img src="../assets/image/collect.png" alt="赞和收藏">
        <p class="ctext">赞和收藏</p>
      </div>
      <div class="mCent">
        <img src="../assets/image/zan.jpg" alt="赞和收藏">
        <p class="ctext">新增关注</p>
      </div>
      <div class="mCent">
        <img src="../assets/image/comment.png" alt="赞和收藏">
        <p class="ctext">评论和@</p>
      </div>
    </div>
    <!-- 消息 -->
    <div class="mBottom">
      <div class="mbImg">
        <img src="../assets/image/dingding.png" alt="头像">
      </div>
      <div class="mbNT">
        <div class="mbName">
          <p>即释</p>
        </div>
        <div class="mbText">
          <p>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈嗝</p>
        </div>
      </div>
      <div class="mbTime">
        <span>20:30</span>
      </div>
    </div>
</div>
</template>
<script>
export default {
    name:"message",
    data(){
        return{
            active:""
        }
    },
}
</script>
<style scoped>
/* 消息标题 */
.mTitle{
  width:100%;
  height:38px;
  line-height: 38px;
  position: relative;
  text-align: center;
}
.mTitle>.tText{
  font-size: 24px;
  font-weight: 350;
}
.mTitle>.tImg{
  position: absolute;
  top:5px;
  right: 20px;
}
/* 各标题 */
.mCenter{
  width: 100%;
  height: 128px;
  display: flex;
  justify-content: space-around;
  border-bottom: 1px solid #ddd;
  margin-bottom: 20px;
}
.mCenter>.mCent{
  width: 30%;
  height: 128px;
  box-sizing: border-box;
  padding: 20px;
  text-align: center;
}
.mCenter>.mCent>img{
  width:48px;
  height: 48px;
  border-radius: 50%;
}
.mCenter>.mCent>.ctext{
  margin: 0;
  padding:10px 0;
  font-weight: bold;
  color: #666;
}
/* 消息 */
.mBottom{
  width: 100%;
  height:72px;
  display: flex;
  justify-content: space-between;
}
/* 头像 */
.mBottom>.mbImg{
  width: 20%;
  height: 72px;
  padding: 10px;
  box-sizing: border-box;
  text-align: center;
}
.mBottom>.mbImg>img{
  width: 52px;
  height: 52px;
  border-radius:50%; 
}
.mBottom>.mbNT{
  width:60%;
  height: 72px;
}
.mBottom>.mbNT>.mbName>p,
.mBottom>.mbNT>.mbText>p{
  width: 100px;
  height: 36px;
  margin: 0;
  line-height: 36px;
  font-size: 18px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #333;
}
.mBottom>.mbNT>.mbText>p{
  width: 200px;
  font: 16px;
  color: #888;
}
.mBottom>.mbTime{
  width: 20%;
  height: 72px;
  line-height: 72px;
  color: #333;
}

</style>