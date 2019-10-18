<template>
    <div class="hotshome">
        <van-search
            v-model="value"
            placeholder="美食、菜谱和用户"
            show-action
            shape="round"
            @search="onSearch">
                <div slot="action" @click="onSearch">搜索</div>
        </van-search>
        <van-tabs v-model="activeName" type="card">
            <van-tab title="探店" name="a">
                <div class="storehome">
                    <div class="storepic">
                        <img src="../assets/image/food/a.jpg" alt="">
                        <img src="../assets/image/food/b.jpg" alt="">
                        <img src="../assets/image/food/c.jpg" alt="">
                        <img src="../assets/image/food/d.jpg" alt="">
                        <img src="../assets/image/food/e.jpg" alt="">
                        <img src="../assets/image/food/f.jpg" alt="">
                    </div>
                    <div class="storedetails">
                        <span class="storetitle">海底捞</span>
                        <span class="storetext">
                            海底捞火锅666
                        </span>
                    </div>
                </div>
            </van-tab>
            <van-tab title="食谱" name="b">食谱</van-tab>
            <van-tab title="精选" name="c">精选</van-tab>
        </van-tabs>
    </div>
</template>
<script>
export default {
    name:"Hots",
    data(){
        return{
            active:"a"
        }
    },
}
</script>