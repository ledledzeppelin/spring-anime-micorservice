<template>
  <div class="login-modal">
    <div class="modal-content">
      <h1 v-if="!registerMode">登录</h1>
      <h1 v-else>注册</h1>

      <!-- 表单 -->
      <form @submit.prevent="handleSubmit">
        <template v-if="!registerMode">
          <!-- 登录表单内容 -->
          <ElFormItem label="用户名" prop="username">
            <ElInput v-model="form.username" placeholder="请输入手机号"></ElInput>
          </ElFormItem>
          <ElFormItem label="密码" prop="password">
            <ElInput type="password" v-model="form.password" placeholder="请输入密码"></ElInput>
          </ElFormItem>
          <ElFormItem>
            <ElButton type="primary" native-type="submit">登录</ElButton>
          </ElFormItem>
        </template>

        <template v-else>
          <!-- 注册表单内容 -->
          <ElFormItem label="用户名" prop="username">
            <ElInput v-model="form.username" placeholder="请输入手机号"></ElInput>
          </ElFormItem>
          <ElFormItem label="昵称" prop="nickname">
            <ElInput v-model="form.nickname" placeholder="请输入昵称"></ElInput>
          </ElFormItem>
          <ElFormItem label="密码" prop="password">
            <ElInput type="password" v-model="form.password" placeholder="请输入密码"></ElInput>
          </ElFormItem>
          <ElFormItem label="确认密码" prop="confirmPassword">
            <ElInput type="password" v-model="form.confirmPassword" placeholder="请输入密码"></ElInput>
          </ElFormItem>
          <ElFormItem>
            <ElButton type="primary" native-type="submit">注册</ElButton>
          </ElFormItem>
        </template>

        <!-- 切换按钮 -->
        <div>
          <ElButton type="text" @click="toggleMode">{{ registerMode ? '返回登录' : '注册' }}</ElButton>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import axios from 'axios';


export default {
  data() {
    return {
      form: {
        username: '',
        password: '',
        nickname: '',
        confirmPassword: '',
      },
      registerMode: false,
    };
  },
  methods: {

    setCookie(name, value, days) {
      const date = new Date();
      date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
      const expires = "expires=" + date.toUTCString();
      document.cookie = name + "=" + value + ";" + expires + ";path=/";
    },

    // 例子：设置名为 "token" 的 Cookie，有效期为 7 天


    handleSubmit() {
      if (this.registerMode) {
        // 处理注册逻辑
        this.$axios.post('user/register', this.form)
          .then(response => {
            const { success, message } = response.data;
            if (success) {
              alert("注册成功！");
    
   
              setTimeout(() => {
       
              this.registerMode = false; // 修改 registerMode 属性
              console.log(this.registerMode);
              }, 3000); // 3000 毫秒等于 3 秒
            }

            else
            {
              console.log(message);
            }
          })
         
      }
      else {
        const { username, password } = this.form;
        const loginData = { username, password }
        // 处理登录逻辑
        this.$axios.post('/user/login', loginData)
          .then(response => {
            console.log(response.data);

            const { success, user } = response.data;
            console.log(user);
            console.log(success);
            if (success) {

              // 登录成功，存储用户信息到 Cookie
              this.setCookie('user', JSON.stringify(user), 7); // 存储用户信息，有效期7天

              // 更新导航栏组件的状态为已登录
              this.$emit('loginSuccess');

            }
            else{
              alert(response.data);
            }
            // 在这里可以根据后端返回的数据执行相应的操作，比如跳转页面或者显示成功提示
          })
          .catch(error => {
            // 登录失败，处理错误信息
            console.error('登录失败：', error);
            // 在这里可以根据后端返回的错误信息执行相应的操作，比如显示错误提示
          });
      }
    },

    toggleMode() {
      this.registerMode = !this.registerMode;
      // 重置表单数据
      this.resetForm();
    },
    resetForm() {
      this.form = {
        username: '',
        password: '',
        nickname: '',
        confirmPassword: '',
      };
    },
  },
};
</script>

<style scoped>
.login-modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(7, 7, 7, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 999;
}

.modal-content {
  width: 500px;
  height: 400px;
  background-color: #fbf7f7;
  padding: 20px;
  border-radius: 5px;
  color: #000000;
  /* 字体颜色设置为黑色 */
}

.modal-content h1 {
  text-align: center;
  margin-bottom: 20px;
}
</style>