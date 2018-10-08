// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import MintUi from 'mint-ui'
Vue.use(MintUi);
import "mint-ui/lib/style.css"
//1.1:加载模块 vueResource(发送ajax请求)
import VueResource from 'vue-resource'
//1.2将VueResource 注册Vue
Vue.use(VueResource);
//1.2.1:设置请求的根路径（服务器地址）
Vue.http.options.root='http://127.0.0.1:3000/';
//1.3加载vuex
//1.3.1创建vuex实例对象
import Vuex from 'vuex'
//1.3.2注册vuex
Vue.use(Vuex);
//1.3.3创建vuex实例
var store=new Vuex.Store({
  //创建共享数据
  state:{
    count:0
  },
  //提供操作数据的共享方法
  mutations:{
    increment(state){
      state.count++;
    },
    subtract(state){
      if(state.count>1)
        state.count--;
    }
  },
  getters:{
    optCount:function(state){
      return state.count;
    }
  }
});

Vue.config.productionTip = false;


/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
});
