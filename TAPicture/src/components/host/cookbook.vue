<template>
    <div class="store">
      <div class="storelb">
				<van-swipe :autoplay="1000" indicator-color="white">
						<van-swipe-item><img src="../../assets/image/food/lb1.jpg" alt=""></van-swipe-item>
						<van-swipe-item><img src="../../assets/image/food/lb2.jpg" alt=""></van-swipe-item>
						<van-swipe-item><img src="../../assets/image/food/lb3.jpg" alt=""></van-swipe-item>
						<van-swipe-item><img src="../../assets/image/food/lb4.jpg" alt=""></van-swipe-item> 
				</van-swipe>                   
      </div>
      <div class="storepic">
        <img v-for="(item,i) in 6" :key="i" src="../../assets/image/1.jpg" alt="美食图片">
      </div>
			<div class="storetext">
				<span class="aaa">
					是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！
					 这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！这是什么神仙馅饼，也太好吃了吧！！！本来想就卖了两个说是尝尝鲜！
				</span>
			</div>
    </div>
</template>
<script>
export default {
	name:"selection",
	data(){
		return{
		}
	}
}
</script>
<style scoped>
    .storepic{
        width:100%;
        display: flex;
        flex-wrap: wrap;
        padding: 15px;
        box-sizing: border-box;
    }
    .storepic>img {
        width: 33%;
        padding: 3px;
        border-radius:16px;
        box-sizing: border-box;
    }
    .storelb{
        padding: 10px 15px;
    }
    .storelb>img{
        border-radius: 20px;
    }
		.storetext{
			padding: 10px 15px;
			font-size: 12px;
		}
    .van-swipe-item img{
			width:100%;
            border-radius: 20px;
        }
        .aaa{
            font-size: 18px;
            font-family: Yapi SC;
        }
</style>