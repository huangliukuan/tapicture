<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
    .van-tab{
            border-radius: 30px;
        }
        .van-tabs__nav--card {
    box-sizing: border-box;
    height: 30px;
    margin: 0 16px;
    border: 1px solid #e7475a;
    border-radius: 30px;
}
.van-tabs__nav--card .van-tab {
    color: #e7475a;
    line-height: 28px;
    border-right: 0px solid #e7475a;
}
.van-tabs__nav--card .van-tab.van-tab--active {
    color: #fff;
    background-color: #e7475a;
}
.van-icon-plus:before {
    font-size: 25px;
}
</style>
