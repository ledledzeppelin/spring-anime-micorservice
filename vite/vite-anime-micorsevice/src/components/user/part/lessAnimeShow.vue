<template>
    <div class="container">
      <!-- 左边图片 -->
      <img :src="data.image" alt="图片" class="left-content" >
      <!-- 右边内容 -->
      <div class="right-content">
        <div class="number">{{ data.name }}</div>
        <div class="name">更新至第{{ data.progress }}集</div>
        
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      data: Object // 接收并展示来自父组件的值
    }
  }
  </script>
  
  <style lang="css" scoped>
  .container {
    display: flex;
    width: 100%;
    height: 25%;
    border: 1px solid #000; /* 添加边框 */
    background-color:rgb(227, 244, 210);
    margin: 0; /* 去除页边距 */
    padding: 0; /* 去除内边距 */
  }
  
  .left-content {
    display: flex;
    height:210px;
  /* 图片高度与父容器相同 */
 /* 左侧图片最大宽度为50% */

  }
  
  .right-content {
    position: relative;
    flex: 1; /* 右边内容占据剩余空间 */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }
  
  .number {
    position: absolute;
    top:40px;
    text-align: center;
    font-size: 20px; /* 序号字体大小 */
  }
  
  .name {
    margin-top: 10px; /* 名字上方留出一定的空间 */
    position: absolute;
    bottom: 60px;
    text-align: center;
  }
  </style>
  