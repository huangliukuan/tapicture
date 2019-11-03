<template>
<div class="home">
    <!-- <div class="search">
        <routerlink to="javascript:;">
            <img class="searchimg" src="../assets/image/search.png" alt="">
        </routerlink>
        <input class="searchinput"  type="text" placeholder=搜索美食、菜谱和用户>
    </div> -->
<van-search placeholder="美食、菜谱和用户" show-action shape="round" >
    <div slot="action" class="aaa">搜索</div>
</van-search>
<div class="homebody">
    <div class="homeleft">
        <div v-for="(item,i) of lelist" :key="i" class="home1" @click="gotoDetail(item.fpic)">
            <img class="foodpic" :src="ip+item.fimg[0]" alt="">
            <span>{{item.fname}}</span>
            <div class="title">
                <span>{{item.uname}}</span> 
                <div>
                    <img src="../assets/image/zan.jpg" alt="">
                    <span>{{item.lnum}}</span>  
                </div>
            </div> 
        </div>
    </div>
    <div class="homeright">                 
        <div v-for="(item,i) of rilist" :key="i" class="home1" @click="gotoDetail(item.fpic)">
            <img class="foodpic" :src="ip+item.fimg[0]" alt="">
           <span>{{item.fname}}</span>
            <div class="title">
                <span>{{item.uname}}</span> 
                <div>
                    <img src="../assets/image/zan.jpg" alt="">
                    <span>{{item.lnum}}</span>  
                </div>
            </div> 
        </div>
    </div>
</div>
</div>
</template>
<script>
export default {
    name:"home",
    data(){
        return{
            ip:"http://127.0.0.1:3000/",
            active:"home",
            lelist:[],
            rilist:[],
        }
    },
    methods:{
        gotoDetail(param){
            console.log(param)
            this.$router.push({
                path: `/Details/${param}`,
            })
        }
    },
    created(){
        this.axios.get("/index")
        .then(res=>{
            for (let i = 0; i < res.data.data.length; i++) {
                if(i%2==0){
                    var list=res.data.data[i];
                    this.lelist=[].concat(this.lelist,list);
                }else{
                    var list=res.data.data[i];
                    this.rilist=[].concat(this.rilist,list);
                }
            }
            console.log(this.lelist,this.rilist)
        })
        .catch(err=>{
            console.log(err);
        })
    }
}
</script>
<style scoped>
    /* .search{
        width:300px;
        height: 25px;
        border: 1px solid;
        border-radius: 15px;
        text-align: center;
        position: relative;
        margin-top: 5px;
        font-size: 24px;~~
    }
    .searchimg{
        height: 35px;
        margin-top: 6px;
        margin-left: -300px;
    }
    .searchinput{
        height:20px;
        width:280px;
        margin-top: -5px;
        position: absolute;
        top: 7px;
        left:35px;
        outline: none;
        background: none;
        border: none; 
    } */
    .homebody{
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
        padding: 10px;
        width: 100%;
        box-sizing: border-box;
        
    }
    .title{
        margin-top: 2px;
        font-size:14px;
        display: flex;
        justify-content: space-between;
        object-fit: cover;
    }
    .title>div>img{
        vertical-align: sub;
    }
    .aaa{
        color:#e7475a;
        font-size:16px;
        font-family: Yapi SC;
    }
</style>