import Vue from 'vue'
import Router from 'vue-router'
import Index from '../components/index'
import Test from '../components/test'

Vue.use(Router)

export default new Router({
  routes: [
    {
     path:`/Index`,
     name:'',
     component:Index
     },
     {
      path:'/Test',
      name:'',
      component:Test
     }  
  ]
})
