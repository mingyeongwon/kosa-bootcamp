import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Ch02ComponentRouting from '@/router/Ch02ComponentRouting'
import Ch03DataBinding from './Ch03DataBinding'
import Ch04EventHandlingWatch from './Ch04EventHandlingWatch'


const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  ...Ch02ComponentRouting, // 구조분해
  ...Ch03DataBinding,
  ...Ch04EventHandlingWatch

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router

