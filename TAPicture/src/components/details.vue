<template>
    <div class="details">			
			 <div class="user">
			 	 <van-icon size="35px" name="arrow-left" @click="gohome"/>
					<div class="userpic">	
						<img :src="ip+this.$store.state.fidData.avater" alt=""> 
					</div>				 
			 	<span >{{this.$store.state.fidData.uname}}</span>
			 </div>
			<div class="piclb">
					<van-swipe :autoplay="2000" indicator-color="white">
						<van-swipe-item v-for="(item,i) of this.$store.state.fidData.fimg" :key="i"><img  :src="ip+item" alt=""></van-swipe-item>
					</van-swipe>  
			 </div>
		 	 <div class="text">
				 <span class="texttitle">{{this.$store.state.fidData.fname}}</span>
				 <van-divider :style="{ color: '#1989fa', borderColor: '#f00', padding: '0 3px' }"></van-divider>
				 <span class="textcontent">{{this.$store.state.fidData.fintrd}}</span>
			 </div>
    </div>
</template>
<script>
import {mapState} from "vuex"
export default {
	computed:{
		...mapState(["test"])
	},
	
	data(){
		return{
			ip:"http://127.0.0.1:3000/",
		}
	},
	methods:{
		gohome(){
			this.$router.replace('/index')
		},
		requestData() {
			this.$store.dispatch('getdata',id);
		},
	},	
	created(){
		//获取父页面传参
		const id = this.$route.params.testId
		console.log('testId:',id)
		this.$store.dispatch('getdata',id);//将该参数放入此方法,从服务端请求该参数对应的对象的数据
		//将获得的数据,动态绑定到此页面中
	}
}
</script>
<style scoped>
	.user{
		width: 100%;
		display: flex;
		margin-top: 10px;
		margin-left: 10px;
	}
	.userpic{
		height: 40px;
		width: 40px;
		border:1px solid;
		border-radius: 50%;
		margin-left: 10px;
		overflow: hidden;
	}
	.userpic>img{
		width: 100%;
	}
	.user>span{
		margin-left: 10px;
		margin-top: 10px;
	}
	.piclb{
		padding: 10px 15px;
	}
	.van-swipe-item img{
    width:100%;
  }
	.text{
		padding: 10px 15px;
		margin-bottom: 60px;
	}
	.texttitle{
		font-size: 20px;
	}
	.textcontent{
		font-size: 12px;
	}
</style>