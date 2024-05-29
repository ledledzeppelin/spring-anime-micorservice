<template>
    <div class="classic">
        <div class="title">老番推荐</div>
        <buttom v-for="(item, index) in List" :key="index" :data="item" class="son"/>
        <buttom v-for="(item, index) in List" :key="index" :data="item" class="son"/>
        <div class="update">换一批</div>
    
    </div>
  </template>
  
  <script>
  import buttom from '../part/buttomAnimeShow.vue';
  export default {
    data()
    {
        return{
            List:this.parentValue
            
        }
    },
    props: {
      parentValue: Object// 接收并展示来自父组件的值
    },
    components: {
    buttom
   },
    methods:
    {
        showm()
        {
            console.log(this.img)
            
        }
    }
}
  </script>

<style lang="css" scoped>
.classic {
    position: relative;
    width: 100%;
    float:right;
    display: flex;
    flex-wrap: wrap; /* 允许换行 */
    justify-content: space-between; /* 左右填充 */
    
  
}
.son{
   
    width: 137px;
    float: left;
    padding: 20px;
    
    overflow: hidden;
}

.son:hover {
  background-color: lightblue; /* 鼠标悬停时背景色变为浅蓝色 */
}

.title{
    writing-mode: vertical-rl; /* 从右到左的垂直书写模式 */
      text-orientation: upright; /* 使文本方向保持直立 */
      font-size: 30px;
      background-color: rgb(251, 132, 251);
      color:rgb(74, 247, 97);
    height:300px;
    float:left;
    width:50px;
    text-align: center; /* 确保多行文本水平居中 */
}

.update{
    position: absolute;
    writing-mode: vertical-rl; /* 从右到左的垂直书写模式 */
      text-orientation: upright; /* 使文本方向保持直立 */
      font-size: 30px;
      right:0px;
      height:100px;
      top:100px;
      background-color: rgb(119, 189, 204);
      float:right;
      border-radius: 10px;
}
</style>