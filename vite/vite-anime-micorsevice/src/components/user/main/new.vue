<template>
    <div>
        <div class="head"> 
          <span class="title">番剧推荐</span>
          <span class="update">换一批</span>
        </div>
        <great v-for="(item, index) in List" :key="index" :data="item" class="son" @click="openPage(item)"/>
        
    
    </div>
  </template>
  
  <script>
  import great from '../part/greatAnimeShow.vue';
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
    great
   },
   methods: {
    openPage(item) {
      // 要传递的数据
     
      console.log(item.id);
      const spid=item.id;
      // 在点击组件时打开新窗口并跳转到新页面，同时传递数据
      window.open(`http://localhost:5173/sp?id=${spid}`);
    }
  }
}
  </script>

<style lang="css" scoped>
.container {
    display: flex;
    
    flex-wrap: wrap; /* 允许换行 */
    justify-content: space-between; /* 左右填充 */
  
}
.son{
    height:210px;
    width: 100%;
    padding: 20px;
    overflow: hidden;
    cursor: pointer;
}

.son:hover {
  background-color: lightblue; /* 鼠标悬停时背景色变为浅蓝色 */
}

.head{
  height:50px;
  white-space: nowrap; 
  overflow: hidden;
  background-color:rgb(251, 229, 101);
}

.title{
  vertical-align: top; 
  margin: 20px;
font-size: 30px;
color:chocolate;

}

.update{
  font-size: 20px;
   float: right;
    vertical-align: middle; 
    margin: 10px;
    height: 30px;
    padding:4px;

    color: #0a0909;
    background-color:azure;
    border: 1px solid #fff;
    border-radius: 6px; 
}
</style>
  