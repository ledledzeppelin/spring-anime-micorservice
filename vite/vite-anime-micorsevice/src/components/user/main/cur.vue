<template>
    <div>
        <div class="head"> 
          <span class="title">我的追番</span>
         
        </div>
        <less v-for="(item, index) in List" :key="index" :data="item" class="son" @click="openPage(item)"/>
        
    
    </div>
  </template>
  
  <script>
  import less from '../part/lessAnimeShow.vue';
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
    less
   },
    methods:
    {
        openPage(item) {
      // 要传递的数据
     
      console.log(item.id);
      const spid=item.id;
      // 在点击组件时打开新窗口并跳转到新页面，同时传递数据
      window.open(`http://localhost:5173/sp?id=${spid}`);
    },
        showm()
        {
            console.log(this.img)
            
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
    height:230px;
    width: 100%;
    overflow: hidden;
    padding: 10px;
}

.son:hover {
  background-color: lightblue; /* 鼠标悬停时背景色变为浅蓝色 */
}

.head{
  height:50px;
  white-space: nowrap; 
  overflow: hidden;
  background-color:rgb(174, 252, 96);
}

.title{
  vertical-align: top; 
  margin: 20px;
font-size: 25px;
color:chocolate;

}
</style>
  