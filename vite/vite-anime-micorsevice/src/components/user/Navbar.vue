<template>
    <div class="navbar" >
      <!-- 左侧导航链接 -->
      <div class="navbar-left">
        <router-link to="/">主页</router-link>
        <router-link to="/index">索引</router-link>
        <router-link to="/ranking">排行</router-link>
      </div>
  
      <!-- 中间搜索栏 -->
      <div class="navbar-search">
        <input type="text" placeholder="搜索" v-model="searchQuery">
        <button @click="search">搜索</button>
      </div>
  
      <!-- 右侧用户操作 -->
      <div class="navbar-right">
        <template v-if="isLoggedIn">
          <!-- 用户已登录，显示用户信息 -->
          <div class="user-info">
            <span>{{ userName }}</span>
            <button @click="showHistory">历史记录</button>
            <button @click="showFavorites">收藏</button>
            <button @click="showMessages">消息</button>
            <button @click="logout">退出</button>
          </div>
        </template>
        <template v-else>
          <!-- 用户未登录，显示登录按钮 -->
          <ELbutton type="primary" @click="showLoginModal">登录</ELbutton>
        </template>
      </div>
  
      <div v-if="showModal">
      <Login @loginSuccess="handleLoginSuccess"></Login>
      </div>
    </div>
  </template>
  
  <script>
  import Login from './Login.vue';

  
  export default {
    name:"Navbar",
    data() {
      return {
        isLoggedIn: false,
        showModal: false
      };
    },
    components: {
      Login
   },
    methods: {
      showLoginModal() {
        this.showModal = true;
      },
      closeLoginModal() {
        this.showModal = false;
      },
      handleLoginSuccess()
      {
        console.log("occur");
        this.isLoggedIn=true;
        this.showModal=false;
        console.log(this.isLoggedIn);
        console.log("All Cookies:", document.cookie);
      },
      logout() {
      // 设置 isLoggedIn 为 false
      this.isLoggedIn = false;

      // 清除名为 "token" 的 Cookie
      document.cookie = "cookieName=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

      // 可以根据需要执行其他操作，比如重定向到登录页面等
       },
    },
  
  };
  </script>
  
  <style scoped>
  .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    background-color: #2c99ac;
    color: #fff;
  }
  
  .navbar-left {
  display: flex;
  gap: 30px; /* 设置元素之间的间距为 20px，可以根据需要调整 */
}

/* 为每个 router-link 元素添加样式 */
.navbar-left router-link {
  color: #333; /* 设置文字颜色为黑色，可根据需要调整 */
  text-decoration: none; /* 去除下划线 */
  padding: 10px; /* 设置内边距，增加点击区域 */
  border-radius: 5px; /* 设置圆角，使元素看起来更圆润 */
  background-color: #f0f0f0; /* 设置背景颜色，可根据需要调整 */
}
  
.navbar-search {
  display: flex;
  align-items: center; /* 垂直居中 */
}

.navbar-search input {
  width: 200px;
  padding: 8px; /* 调整输入框内边距 */
  margin-right: 10px;
  border: none;
  border-radius: 5px;
}

.navbar-search button {
  padding: 8px 16px; /* 调整按钮内边距 */
  background-color: #fff;
  color: #2c99ac;
  border: 1px solid #fff;
  border-radius: 5px;
  cursor: pointer;
}
  
  .navbar-right button {
    margin-left: 10px;
    padding: 5px 10px;
    background-color: #fff;
    color: #2ecc71;
    border: none;
    cursor: pointer;
  }
  
  .user-info span {
    margin-right: 10px;
  }
  </style>
  