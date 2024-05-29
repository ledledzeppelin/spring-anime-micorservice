<template>
    <div class="container">
      <!-- 左边图片 -->
      <img :src="data.image" alt="图片" class="picture">
      <!-- 右边内容 -->
      <div class="tex">
        <div class="number">{{ data.name }}</div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      data: Object // 接收并展示来自父组件的值
    },
    methods:
    {

    }
  }
  </script>
  
  <style lang="css" scoped>
  .container {
    background-color:rgb(233, 201, 217) ;   
    margin: 0; /* 去除页边距 */
    padding: 0; /* 去除内边距 */
    
  }
  
  .picture {
    
    width: 100%;/* 左侧图片宽度为12% */
    height:210px;
     /* 图片高度与父容器相同 */
  }
  
  .tex {
    height:50px;
    
    
  }
  
  .number {
    font-size: 20px; /* 序号字体大小 */
    width: 100%; /* 名字占满宽度 */
    text-align: center; /* 文本居中 */
    margin-top: 15px;
  }
  </style>
  