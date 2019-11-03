<template>
    <div class="hotshome">
        <van-search
            placeholder="美食、菜谱和用户"
            show-action
            shape="round"
            >
            <div slot="action" class="ccc">搜索</div>
        </van-search>       
        <van-tabs  type="card">
            <van-tab title="精选" name="a" >
                <selection></selection>
            </van-tab>
            <van-tab title="食谱" name="b" class="bbb">
                <cookbook></cookbook>
            </van-tab>
            <van-tab title="探店" name="c">
                <store></store>
            </van-tab>
        </van-tabs>
    </div>
</template>
<script>
import store from './host/store.vue'
import cookbook from './host/cookbook.vue'
import selection from './host/selection.vue'
export default {
    name:"Hots",
    components:{
        "store":store,
        "cookbook":cookbook,
        "selection":selection,
    },
    data(){
        return{
            active:"b"
        }
    },
}
</script>
<style  scoped>
.ccc{
        color:#e7475a;
        font-size:16px;
        font-family: Yapi SC;
    }
</style>