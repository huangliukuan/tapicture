<template>
    <div>
        <div class="indexbody">
            <mt-tab-container v-model="active">
              <mt-tab-container-item id="home">
                  <home></home>
              </mt-tab-container-item>
              <mt-tab-container-item id="hots">
                  <hots></hots>
              </mt-tab-container-item>
              <mt-tab-container-item id="send">
                  <send></send>
              </mt-tab-container-item>
              <mt-tab-container-item id="message">
                  <message></message>
              </mt-tab-container-item>
              <mt-tab-container-item id="mine">
                  <mine></mine>
              </mt-tab-container-item>
            </mt-tab-container>      
    </div>                 
<div class="footer">
    <van-tabbar v-model="active" >
        <van-tabbar-item name="home">
            <span>首页</span>
            <img slot=icon
            slot-scope="props"
             :src="props.active? icon1.active : icon1.normal">
        </van-tabbar-item>
        <van-tabbar-item name="hots">
            <span>热门</span>
            <img slot=icon
            slot-scope="props"
             :src="props.active? icon2.active : icon2.normal">
        </van-tabbar-item>
        <van-tabbar-item name="send" icon="plus"></van-tabbar-item>
        <van-tabbar-item name="message">
            <span>消息</span>
            <img slot=icon
            slot-scope="props"
             :src="props.active? icon3.active : icon3.normal">
        </van-tabbar-item>
        <van-tabbar-item name="mine">
            <span>我的</span>
            <img slot=icon
            slot-scope="props"
             :src="props.active? icon4.active : icon4.normal">
        </van-tabbar-item>
    </van-tabbar>
</div>
    </div>
</template>
<script>
import Home from './home'
import Hots from './hots'
import Message from './Message'
import Mine from './Mine'
import Send from './send'
export default {
    name:"vIndex",
    data(){
        return{
            active:"home",
            icon1:{
                normal:"http://127.0.0.1:3000/image/icon/index.png",
                active:"http://127.0.0.1:3000/image/icon/index-active.png"
            },
            icon2:{
                normal:"http://127.0.0.1:3000/image/icon/hots.png",
                active:"http://127.0.0.1:3000/image/icon/hots-active.png"
            },
            icon3:{
                normal:"http://127.0.0.1:3000/image/icon/msg.png",
                active:"http://127.0.0.1:3000/image/icon/msg-active.png"
            },
            icon4:{
                normal:"http://127.0.0.1:3000/image/icon/mine.png",
                active:"http://127.0.0.1:3000/image/icon/mine-active.png"
            }

        }
    },
    components:{
        "home":Home,
        "hots":Hots,
        "message":Message,
        "mine":Mine,
        "send":Send
    },
   
}

</script>
<style scoped>
    .mint-tabbar>.mint-tab-item{
        color:#ACACAC;
        background-color: #fff;
        padding: 15px;
        
    }
    .mint-tabbar>.mint-tab-item.is-selected{
        color:#000;
        font-size: 20px;
    }
    .van-tabbar-item--active {
    color: #e7475a;
}
.van-tabbar-item{
    font-size: 14px;
}
.van-tabbar-item__icon img{
    height: 25px;
}
</style>