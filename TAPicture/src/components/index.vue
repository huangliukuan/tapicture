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
              <mt-tab-container-item id="message">
                  <message></message>
              </mt-tab-container-item>
              <mt-tab-container-item id="mine">
                  <mine></mine>
              </mt-tab-container-item>
            </mt-tab-container>
            
        </div>                 
             <div class="footer">
                <van-tabbar v-model="active" active-color="#000">
                    <van-tabbar-item name="home">
                        <span>首页</span>
                        <img slot=icon src="../assets/image/icon/home.png">
                    </van-tabbar-item>
                    <van-tabbar-item name="hots">
                        <span>热门</span>
                        <img slot=icon src="../assets/image/icon/hots.png">
                    </van-tabbar-item>
                    <van-tabbar-item icon="plus"></van-tabbar-item>
                    <van-tabbar-item name="message">
                        <span>消息</span>
                        <img slot=icon src="../assets/image/icon/message.png">
                    </van-tabbar-item>
                    <van-tabbar-item name="mine">
                        <span>我的</span>
                        <img slot=icon src="../assets/image/icon/mine.png">
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
export default {
    name:"vIndex",
    components:{
        "home":Home,
        "hots":Hots,
        "message":Message,
        "mine":Mine,
    },
    data(){
        return{
            active:"home"
        }
    }  
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
</style>