import Vue from 'vue';
import Vuex from 'vuex';
import axios from "axios"
Vue.use(Vuex);

var store = new Vuex.Store({
  state:{//共享数据
    lelist:[],
    rilist:[],
    fidData:-1,
  },
  mutations:{ //修改共享数据
    updateLelist: function(state, param) {
      state.lelist = param.leftArr;
      state.rilist = param.rightArr;
      state.fidData= param.fidData;
    }
  },
  getters:{//获取共享数据
  },
  actions:{
    
    getdata(context,n){
      console.log(n)
      axios.get("/index")
      .then(res=>{
          var leftArr = []
          var rightArr = []
          var fidData        
          for (let i = 0; i < res.data.data.length; i++) {
              if(i%2==0){
                  leftArr.push(res.data.data[i])
              }else{
                  rightArr.push(res.data.data[i])
              }
              console.log(res.data.data[i].fpic)
              if(n==res.data.data[i].fpic){
                fidData=res.data.data[i]
                console.log(fidData)
              }
          }
          console.log('left:',leftArr,'; right:', rightArr)
  
          context.commit('updateLelist', {leftArr,rightArr,fidData})
      })
      .catch(err=>{
          console.log(err);
      })

    }//异步修改数据
  }
})
export default store
