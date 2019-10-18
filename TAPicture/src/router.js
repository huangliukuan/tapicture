import Vue from 'vue'
import Router from 'vue-router'
import Index from "../src/components/index.vue"
import Test from '../src/components/test.vue'


Vue.use(Router)

export default new Router({
    routes:[
     {path:`/Index`,component:Index},
     {path:`/Test`,component:Test} 
    ]
})