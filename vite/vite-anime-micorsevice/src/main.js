import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import ElementPlus from 'element-plus';
import 'element-plus/dist/index.css';
import axiosPlugin from './axios'; 

const app = createApp(App);

// 安装并使用路由
app.use(router);

// 安装并使用 Element Plus
app.use(ElementPlus);

app.use(axiosPlugin);

// 挂载 Vue 应用到指定的 DOM 元素
app.mount('#app');

