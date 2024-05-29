<template>
    <div>
    <Navbar></Navbar>
    <router-view class="container"></router-view>
    <div class="container">
    <!-- 左对齐，宽度80%，高度1200，填入newanimerecom.vue的组件 -->
    <div class="new">
        
          <new :parentValue="newlist"></new>
          
    </div>

    <!-- 右对齐，宽度20%，高度1200，填入curupdate.vue的组件 -->
    <div class="curupdate">
          <cur :parentValue="curlist"></cur>
        
    </div>

    <!-- 在上面组件的下面，高度400，填入classicanime.vue的组件 -->
    <div class="classic">
        
          <classic :parentValue="classiclist"></classic>
        
    </div>
</div>

  </div>
</template>


<script>
import Navbar from './Navbar.vue';
import New from './main/new.vue';
import cur from './main/cur.vue';
import classic from './main/classic.vue';

const initialList = [
  {
    "id":1,
    "name":"间谍过家家 第二季",
    "rate":9.8,
    "progress":4,
    "views":537,
    "introduction": "简介：每个人都有不可告人的一面。这是一个世界各国均暗地里进行激烈情报战的时代。奥斯塔尼亚（Ostania）与维斯达利斯（Westalis）的冷战状态已经持续数十年。<黄昏>是维斯达利斯情报局奥斯塔尼亚对策科<WISE>的一名优秀间谍。为调查威胁两国和平的人物——奥斯塔尼亚国家统一党总裁多诺万·德斯蒙，上级给予了他一个绝密任务。任务名为：<枭（Strix）>行动。内容是“一周之内组建家庭，潜入德斯蒙儿子就读的名门学校的联谊会”。于是<黄昏>扮演成精神科医生劳埃德·福杰，开始组建家庭。然而，他找来的女儿阿尼亚是个能读心的超能力者，妻子约尔是个.",
    "image":"/src/assets/one.jpg"
   
  },
  {
    "id":2,
    "name": "神的记事本",
    "rate":9.4,
    "progress":4,
    "views":46,
    "introduction": "神様のメモ帐（神的记事本）是日本作家杉井光所做轻小说，并衍生成为漫画，动画及广播剧作品。该作故事讲述了“尼特侦探”爱丽丝和身为侦探助手的藤岛鸣海所编织的无奈奇怪但稍微会展现出一点勇气的故事。在闹区的巷道中，有著一间拉面店「ラーメンはなまる」（花丸拉面店），後门通往「NEET侦探事务所」。街上尼特族的统御者爱莉丝，以及平常不认真过日子的尼特族们，为了解决事件而奋斗……",
    "image":"/src/assets/two.jpg"
   
  },
  {
    "id":3,
    "name": "纯白交响曲",
    "rate":9.2,
    "progress":4,
    "views":114,
    "introduction": "简介：男主角瓜生新吾是“各务台学园”的普通学生。不过该学校由于各种原因的关系，在新学期开始的时候将同名叫“结姬女子学园”的名门女校进行合并。为了让学生能够更加融洽地相处，校方在新学期开始之前实行了试行合并，包括新吾在内的数十名各务台学园生试验性地到结女学园上学。而男生的出现也在女校引发了不小的骚动，众多个性丰富的妹子们也扎堆似的出现在了男主角的面前。那么包围在后宫般的环境当中，新吾又将从何选择呢……《纯白交响曲》（ましろ色シンフォニー）是日本游戏公司palette（ぱれっと）于2009年10月30日发售的美少女游戏，含有...",
    "image":"/src/assets/three.jpg"
   
  },
  {
    "id":4,
    "name": "罪恶王冠",
    "rate":8.3,
    "progress":4,
    "views":514,
    "introduction": "简介：处于无政府状态的日本，受到了由超国家之间所组织成的名为“GHQ”的组织的武力介入并接受其统治，东京的六本木更成为被封锁的地区。之后又以名为“lost christmas（失落的圣诞）”的事件为契机，日本失去了独立国家的实质权力，并被赋予了表面上的自治权，由此人们开始享受短暂的和平。时光流逝，10年后的2039年。少年樱满集——怀抱着抑郁的心境，并对世间冷眼相待——在天王州第一高校就读的高中二年生，与同学们保持着一定距离的同时，度过着闲散而又平静的日子。然而集安稳的日常在某一天突然宣告结束。那天放学后，在自己中意的老地方和一...",
    "image":"/src/assets/four.jpg"
   
  },
];

export default {
  data() {
    return {
      newlist: initialList,
      curlist: initialList,
      classiclist:initialList,
      hl:"hellolive"
    };
  },
  components: {
    Navbar,
    New,
    cur,
    classic
  },
  methods:
  {
    cout()
    {
      console.log(initialList);
    }
  }
};
</script>



<style scoped>

.container {

    display: flex; /* 使用 Flexbox 布局 */
    flex-wrap: wrap; /* 允许换行 */
    height: 700px;
    overflow-y: auto; /* 在垂直方向上添加滚动条 */
}

.new {
  
    float: left;
    width: calc(100% - 406px);
    height: 1050px; /* 添加 1 像素的边框，颜色为灰色 */
    
    /* 添加 20 像素的内边距 */
}

.classic {
    
    width: 100%; /* 使用 clear: both; 来确保位于上面两个组件下方 */
    height: 300px;
  
}
/* newanimerecom 组件的样式 */


/* 包含 curupdate 组件的容器样式 */
/* curupdate 组件的样式 */
.curupdate {
    width: 400px;
    height: 1050px;
    border: 1px solid #ccc;
    padding: 1px ;
   
    
    
}



</style>