

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

import ElementPlus from 'element-plus';
import 'element-plus/dist/index.css';

const app = createApp(App)

app.use(router)

// Use Element Plus
app.use(ElementPlus);

app.mount('#app')
