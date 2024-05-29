<template>
    <div class="container">
      <!-- 左边图片 -->
      <img :src="data.image" alt="图片" class="picture" >
      <!-- 右边内容 -->
      <div class="right-content">
        <div class="number">{{ data.name }}</div>
        <div class="name">{{ data.introduction }}</div>
        <div class="rate">{{ data.rate }}</div>
        <div class="views">{{ data.views }}万播放</div>
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
     /* 添加边框 */
    margin: 0; /* 去除页边距 */
    padding: 0; /* 去除内边距 */
    background-color: antiquewhite;
  }
  
  .picture {
   
  /* 图片高度与父容器相同 */
  height: 210px; /* 左侧图片最大宽度为50% */

  }
  
  .right-content {
    position: relative;
    flex: 1; /* 右边内容占据剩余空间 */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 10px;
    padding-left: 50px;
    padding-right: 70px;
  }
  
  .number {
    position: absolute;
    top:20px;
    font-size: 20px; /* 序号字体大小 */
  }
  
  .name {
    position: relative;
    /* 名字上方留出一定的空间 */
    font-size: 15px;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 4;
    overflow: hidden;
  }

  .rate {
    position: absolute;
    font-size: 30px;
    bottom: 10px;
    left: 50px;
    color: rgb(251, 227, 8); /* 设置文本颜色为白色 */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* 添加阴影效果 */
}

.views{
  position: absolute;
    font-size: 20px;
    bottom: 10px;
    right: 200px;
    color: rgb(53, 52, 41); /* 设置文本颜色为白色 */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* 添加阴影效果 */
}

  </style>
  