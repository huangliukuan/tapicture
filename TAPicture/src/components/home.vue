<template>
<div class="home">
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
        })
        .catch(err=>{
            console.log(err);
        })
    }
}
</script>
<style scoped>
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