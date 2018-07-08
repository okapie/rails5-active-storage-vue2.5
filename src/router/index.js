import Vue from 'vue'
import Router from 'vue-router'
import Top from '@/components/Top'
import Users from '@/components/Users'
import UserDetail from '@/components/UserDetail'
import Uploader from "@/components/Uploader"

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Top',
      component: Top
    },
    {
      path: '/users',
      name: 'Users',
      component: Users
    },
    {
      path: '/users/:id',
      name: 'UserDetail',
      component: UserDetail
    },
    {
      path: "/uploader",
      name: "Uploader",
      component: Uploader
    }
  ]
})
