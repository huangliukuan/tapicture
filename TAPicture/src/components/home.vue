<template>
<div class="home">
    <van-search placeholder="输入美食名称" 
    show-action shape="round"
    v-model="seachName" >
    <div slot="action" class="aaa" @click="seachFoot">搜索</div>
</van-search>
<div class="homebody">
    <div class="homeleft">
        <div v-for="(item,i) of lelist" :key="i" class="home1" >
            <img class="foodpic" @click="gotoDetail(item.fid)" :src="ip+item.fimg[0]" alt="">
            <span>{{item.fname}}</span>
            <div class="title">
                <span>{{item.uname}}</span> 
                <div @click="Like(item.fid)">
                    <img :src="ip+item.likeImg" alt="">
                    <span>{{item.lnum}}</span>  
                </div>
            </div> 
        </div>
    </div>
    <div class="homeright">                 
        <div v-for="(item,i) of rilist" :key="i" class="home1" >
            <img class="foodpic" @click="gotoDetail(item.fid)" :src="ip+item.fimg[0]" alt="">
           <span>{{item.fname}}</span>
            <div class="title">
                <span>{{item.uname}}</span> 
                <div  @click="Like(item.fid)" >
                    <img :src="ip+item.likeImg" alt="">
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
            lists:[],
            seachName:""
        }
    },
    methods:{
        //点赞
        Like(fid){
            for(var item of this.lists){
                if(item.fid==fid){
                    if(item.likeImg=="image/zan.jpg"){
                        item.lnum++;
                        item.likeImg="image/zan.png";
                        var obj={fid:item.fid,lnum:item.lnum}
                        this.axios.get('/like',obj)
                        .then(res=>{
                            this.$toast({message:"点赞成功"})
                        })
                        .catch(err=>{
                            console.log(err);
                        })
                    }else{
                        item.lnum--;
                        item.likeImg="image/zan.jpg";
                        this.axios.get('/like',obj)
                        .then(res=>{
                            this.$toast({message:"取消点赞"})
                        })
                        .catch(err=>{
                            console.log(err);
                        })
                    }
                }
            }
        },
        //搜索食物
        seachFoot(){
            if(this.seachName!==""){
                var nofood=true;
                var list=[];
                for(var item of this.lists){
                    if(item.fname==this.seachName){
                        nofood=false;
                        list=[].concat(list,item)
                        this.partition(list);
                        this.seachName='';
                        break;
                    }
                }
                if(nofood){
                    this.$toast({message:"未找到该美食"}) 
                }  
            }else{
                this.$toast({message:"请输入想搜索的美食"})
            }
            
        },
        //跳转详情
        gotoDetail(param){
            this.$router.push({
                path: `/Details/${param}`,
            })
        },
        //将食物分成两部分
        partition(arr){
            this.lelist=[];
            this.rilist=[];
            for (let i = 0; i < arr.length; i++) {
                arr[i].likeImg='image/zan.jpg';
                if(i%2==0){
                    var list=arr[i];
                    this.lelist=[].concat(this.lelist,list);
                }else{
                    var list=arr[i];
                    this.rilist=[].concat(this.rilist,list);
                }
            }
        }
    },
    created(){
        this.axios.get("/index")
        .then(res=>{
            this.lists=res.data.data;
            this.partition(this.lists);
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
        padding:5px;
    }
    .home1>span{
        font-size: 18px;
    }
    .foodpic{
        padding: 10px;
        width: 100%;
        box-sizing: border-box;
        border-radius: 5px;
    }
    .title{
        margin-top: 5px;
        font-size:14px;
        display: flex;
        justify-content: space-between;
        object-fit: cover;
        padding:0 5px;
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