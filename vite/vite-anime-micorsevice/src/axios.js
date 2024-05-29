import axios from 'axios';

// 创建一个 Axios 实例
const instance = axios.create({
  baseURL: 'https://loaclhost:8080', // 设置基本的 URL
  timeout: 5000, // 设置超时时间
  headers: {
    'Content-Type': 'application/json', // 设置请求头
  },
});

export default {
    install: (app) => {
      app.config.globalProperties.$axios = instance;
    },
  };
