<template>
     <div class="footer">
        <h3>footer</h3>
        <mt-tabbar fixed v-model="active">
            <mt-tab-item id="tab1">首页</mt-tab-item>
            <mt-tab-item id="tab2">热门</mt-tab-item>
            <mt-tab-item id="tab3">＋</mt-tab-item>
            <mt-tab-item id="tab4">关注</mt-tab-item>
            <mt-tab-item id="tab5">我的</mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<script>
export default {
    name:"vFooter",
    data(){
        return{
            active:"tab1"
        }
    },
    props:{
        active:{default:"tab1"}
    }
}
</script>
<style scoped>
</style>