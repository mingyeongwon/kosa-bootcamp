import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

// bootstrap 관련 js와 css 로딩
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import store from './store'

// app 컴포넌트를 <div id="app"></div>에 내용으로 추가
createApp(App).use(store).use(router).mount('#app')
