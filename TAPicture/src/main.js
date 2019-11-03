// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router/index'


Vue.config.productionTip = false
//功能:引入第三方组件库mint-ui
// 1:完整引入mint-ui组件库中所有组件
import MintUI from "mint-ui"
//2:单引入mint-ui库中样式文件
import "mint-ui/lib/style.css"
//3:将mint-ui注册Vue示例
Vue.use(MintUI)
import Vant from 'vant'
// import { Lazyload } from 'vant';
import 'vant/lib/index.css'


Vue.use(Vant);
// Vue.use(Lazyload);
// 引入axios
import axios from "axios"
// 配置服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/";
// 配置保存session信息

axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;

import store from './store/store'

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>',
  store
})
