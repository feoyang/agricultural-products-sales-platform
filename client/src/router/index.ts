// createRouter：创建router实例对象
// createWebHistory：创建history模式的路由

import { createRouter, createWebHistory } from 'vue-router'
import Home from '@/views/Home/index.vue'
import Login from '@/views/Login/index.vue'
import Register from '@/views/Register/index.vue'
import Perchase_Layout from '@/views/Perchase/Layout/index.vue'
import Perchase_Home from '@/views/Perchase/Home/index.vue'
import Perchase_Category from '@/views/Perchase/Category/index.vue'
import Perchase_SubCategory from '@/views/Perchase/SubCategory/index.vue'
import Perchase_Detail from '@/views/Perchase/Detail/index.vue'
import Perchase_CartList from '@/views/Perchase/CartList/index.vue'
import Perchase_Checkout from '@/views/Perchase/Checkout/index.vue'
import Perchase_Pay from '@/views/Perchase/Pay/index.vue'
import Perchase_PayBack from '@/views/Perchase/Pay/PayBack.vue'
import Perchase_Member from '@/views/Perchase/Member/index.vue'
import Perchase_UserInfo from '@/views/Perchase/Member/components/UserInfo.vue'
import Perchase_UserOrder from '@/views/Perchase/Member/components/UserOrder.vue'
import Require_Layout from '@/views/Require/Layout/index.vue'
import Require_Home from '@/views/Require/Home/index.vue'
import Knowledge_Layout from '@/views/Knowledge/Layout/index.vue'
import Knowledge_Home from '@/views/Knowledge/Home/index.vue'
import Cooperate_Layout from '@/views/Cooperate/Layout/index.vue'
import Cooperate_Home from '@/views/Cooperate/Home/index.vue'
// import Manage from '@/views/Manage'




const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  // path和component对应关系的位置
  routes: [
    {
      path: '/',
      component: Home,
    },
    {
      path: '/login',
      component: Login
    },
    {
      path: '/register',
      component: Register
    },
    {
      path: '/order',
      component: Perchase_Layout,
      children: [
        {
          path: '',
          component: Perchase_Home
        },
        {
          path: '/order/getCategory/:id',
          component: Perchase_Category
        },
        {
          path: '/category/sub/:id',
          component: Perchase_SubCategory
        },
        {
          path: '/order/detail/:id',
          component: Perchase_Detail
        },
        {
          path: '/cartlist',
          component: Perchase_CartList
        },
        {
          path: '/checkout',
          component: Perchase_Checkout
        },
        {
          path: '/pay',
          component: Perchase_Pay
        },
        {
          path: '/paycallback',
          component: Perchase_PayBack
        },
        {
          path: '/member',
          component: Perchase_Member,
          children: [
            {
              path: '',
              component: Perchase_UserInfo
            },
            {
              path: '/order',
              component: Perchase_UserOrder
            }
          ]
        }
      ]
    },
    {
      path: '/require',
      component: Require_Layout,
      children: [
        {
          path: '/home',
          component: Require_Home
        }
      ]
    },
    {
      path: '/knowledge',
      component: Knowledge_Layout,
      children: [
        {
          path: '/home',
          component: Knowledge_Home
        }
      ]
    },
    {
      path: '/cooperate',
      component: Cooperate_Layout,
      children: [
        {
          path: '/home',
          component: Cooperate_Home
        }
      ]
    },
    // {
    //   path: '/manage',
    //   component: Manage,
    //   // children: [
    //   //   {
    //   //     path: '/home',
    //   //     component: Cooperate_Home
    //   //   }
    //   // ]
    // }
  ],
  // 路由滚动行为定制
  scrollBehavior () {
    return {
      top: 0
    }
  }
})

export default router
