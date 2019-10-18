<template>
    <div class="home">
            
            <!-- <div class="search">
                <routerlink to="javascript:;">
                    <img class="searchimg" src="../assets/image/search.png" alt="">
                </routerlink>
                <input class="searchinput"  type="text" placeholder=搜索美食、菜谱和用户>               
            </div> -->
                <van-search
                v-model="value"
                placeholder="美食、菜谱和用户"
                show-action
                shape="round"
                @search="onSearch"
                >
                <div slot="action" @click="onSearch" style="color:red">搜索</div>
                </van-search>
                <div class="homebody">
                        <div class="homeleft">
                            <div class="home1">
                                <img class="foodpic" src="../assets/image/food/home7.jpg" alt="">
                                <span>香甜美味八宝粥！</span>
                                <div class="title">
                                    <span>牛牛</span> 
                                    <img src="../assets/image/zan.jpg" alt="">
                                    <span>2952</span>
                                </div> 
                            </div>
                            <div class="home1">
                                <img class="foodpic" src="../assets/image/food/home2.jpg" alt="">
                                <span>玉米排骨，快来尝一尝吧！快来尝一尝吧！快来尝一尝吧！快来尝一尝吧！快来尝一尝吧！</span><br>
                                <span>牛牛</span> 
                                <img src="../assets/image/zan.jpg" alt="">
                                <span>2952</span>
                            </div>
                            <div class="home1">
                                <img class="foodpic" src="../assets/image/food/home9.jpg" alt="">
                                <span>香酥暖糯，外焦里嫩，油炸豆腐。内含详细做法步骤。</span><br>
                                <span>牛牛</span> 
                                <img src="../assets/image/zan.jpg" alt="">
                                <span>2952</span>
                            </div>  
                        </div>
                        <div class="homeright">                 
                            <div class="home1">
                                    <img class="foodpic" src="../assets/image/food/home1.jpg" alt="">
                                    <span>元气满满的一天从营养早餐开始！</span>
                                <div class="title">
                                    <span>牛牛</span> 
                                    <img src="../assets/image/zan.jpg" alt="">
                                    <span>2952</span>
                                </div> 
                            </div>
                            <div class="home1">
                                    <img class="foodpic" src="../assets/image/food/home5.jpg" alt="">
                                    <span>家常豆腐，快来尝一尝吧！家常豆腐，快来尝一尝吧！家常豆腐，快来尝一尝吧！家常豆腐，快来尝一尝吧！家常豆腐，快来尝一尝吧！</span><br>
                                    <span>牛牛</span> 
                                    <img src="../assets/image/zan.jpg" alt="">
                                    <span>2952</span>
                            </div>
                            <div class="home1">
                                    <img class="foodpic" src="../assets/image/food/home8.jpg" alt="">
                                    <span>香酥小油条！香酥小油条！香酥小油条！</span><br>
                                    <span>牛牛</span> 
                                    <img src="../assets/image/zan.jpg" alt="">
                                    <span>2952</span>
                            </div>
                        </div>
                    </div>
    </div>
</template>
<script>
export default {
    name:"test",
    data(){
        return{
            active:"home"
        }
    },
}
</script>
<style scoped>
    .search{
        width:350px;
        height: 25px;
        border: 1px solid;
        border-radius: 15px;
        text-align: center;
        position: relative;
        margin-top: 5px;
    }
    .searchimg{
        height: 15px;
        margin-top: 6px;
        margin-left: -300px;
    }
    .searchinput{
        height:20px;
        width:300px;
        margin-top: -5px;
        position: absolute;
        top: 7px;
        left:35px;
        outline: none;
        background: none;
        border: none;
    }
    .homebody{
        /* height: 800px; */
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: start;
        margin-bottom: 60px;

    }
    .homeleft,.homeright{
        width: 50%;
        display: flex;
        flex-direction: column;
        box-sizing: border-box;

    }
    .home1{
        width: 100%;      
        display: flex;
        flex-direction: column;
        padding: 2px;
        box-sizing: border-box;
        margin-top: 2px;
    }
    .home1>span{
        font-size: 18px;
    }
    .foodpic{
        width: 100%
    }
    .title{
        margin-top: 2px;
        font-size: 10px;
    }
    .title>img{
        vertical-align: sub;
    }
</style>