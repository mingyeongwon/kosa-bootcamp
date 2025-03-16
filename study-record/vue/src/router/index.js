import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Ch02ComponentRouting from '@/router/Ch02ComponentRouting'
import Ch03DataBinding from './Ch03DataBinding'
import Ch04EventHandlingWatch from './Ch04EventHandlingWatch'
import Ch05DataDelivery from './Ch05DataDelivery'
import Ch06LifecycleHook from './Ch06LifecycleHook'
import Ch07VuexStateManagement from './Ch07VuexStateManagement'
import Ch08RestAPI from './Ch08RestAPI'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  ...Ch02ComponentRouting, // 구조분해
  ...Ch03DataBinding,
  ...Ch04EventHandlingWatch,
  ...Ch05DataDelivery,
  ...Ch06LifecycleHook,
  ...Ch07VuexStateManagement,
  ...Ch08RestAPI
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router

