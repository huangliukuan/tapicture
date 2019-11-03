import Vue from 'vue'
import Router from 'vue-router'
import Index from "../components/index.vue"
import Details from '../components/details.vue'
import Login from '../components/Login.vue'


Vue.use(Router)

export default new Router({
    routes:[
    {path:`/`,component:Index},
     {path:`/Index`,component:Index},
     {path:`/Details/:testId`,component:Details},
     {path:'/Login',component:Login},
    ]
})
