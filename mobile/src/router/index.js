import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/components/index'
import Register from '@/components/register'
import Login from '@/components/login'
import Swipe from '@/components/subcomponents/swipe'
import Details from '@/components/details'
import List from '@/components/list'
import Cart from '@/components/cart'
import Demo from '@/components/demo'
Vue.use(Router);

export default new Router({
  mode:'history',
  routes: [
    {path: '',redirect:'/index'},
    {path: '/index',component: Index},
    {path: '/register',component: Register},
    {path: '/login',component:Login},
    {path: '/swipe', component:Swipe},
    {path: '/demo' , component:Demo},
    {path: '/details',component:Details},
    {path: '/list/:kw' ,component:List},
    {path: '/cart' ,component:Cart}
  ]
})
