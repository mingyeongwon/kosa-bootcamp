import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

// bootstrap 관련 js와 css 로딩
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import store from './store'
import axiosConfig from './apis/axiosConfig'

// 브라우저 재실행 시 인증 정보를 가져오기 
store.dispatch("loadAuth");

// app 컴포넌트를 <div id="app"></div>에 내용으로 추가
createApp(App).use(store).use(router).mount('#app')
