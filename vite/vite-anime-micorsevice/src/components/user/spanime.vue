<template>
    <Navbar />
    <div class="container">

        <div class="top-section">
            <div class="media-info-inner clearfix">
                <div class="ani-pic">
                    <div class="common-lazy-img">
                        <img alt="原神" :src="spanime.image" lazy="loaded" class="picture">
                    </div>
                </div>
                <div class="media-info-right">
                    <!--title-->
                    <div class="media-info-title">
                        <span class="media-info-title-t">{{ spanime.name }}</span>
                        <span class="media-tags" style="opacity: 1;">
                            <span v-for="(tag, index) in spanime.tags" :key="index" class="media-tag">{{ tag }}</span>

                        </span>
                    </div>
                    <!--data-->
                    <div class="media-info-datas">
                        <div class="media-info-count">
                            <span class="media-info-count-item">
                                <span class="media-info-label">总播放</span>
                                <em>{{ spanime.views }}万</em>
                            </span>
                            <span class="media-info-count-item" width="96px">
                                <span class="media-info-label">弹幕总数</span>
                                <em>{{ spanime.commentnum }}条</em>
                            </span>
                        </div>

                    </div>

                    <div class="media-info-time">
                        <span>{{ spanime.years }}年{{ spanime.quarter }}季度开播</span> <span>{{ spanime.state }}</span>
                    </div>

                    <div class="media-info-intro"><span class="media-info-intro-text">{{ spanime.introduction }}</span>
                        <!----> <!---->
                    </div>

                    <div class="star-rating">
                        <span v-for="star in fullStars" :key="star" class="star full">&#9733;</span>
                        <span v-if="halfStar" class="star half">&#9733;</span>
                        <span v-for="star in emptyStars" :key="star" class="star empty">&#9734;</span>
                        <span class="rate">{{ spanime.rate }}分</span>
                    </div>

                </div>
            </div>
            <!-- 上部分内容 -->
        </div>

        <div class="bottom-section">
            <div class="media-tab-nav">
                <ul class="clearfix">
                    <li class="" @click="toggleComponent">长评 {{spanime.longreviewsize}}</li>
                    <li class="on" @click="toggleComponent">短评 {{spanime.shortreviewsize}}</li>
                </ul>
            </div>
            <component :is="currentComponent"  :parentValue="spanime"/>
            <!-- 下部分内容 -->
        </div>
    </div>
</template>

<script>
import Navbar from './Navbar.vue';
import short from './review/shortReview.vue';
import long from './review/longReview.vue';

const anime = {
    "id": 2,
    "name": "间谍过家家 第二季",
    "tags": [
        "漫画改",
        "日常",
        "搞笑"
    ],
    "longreviewsize":789,
    "shortreviewsize":8173,
    "state": "连载中",
    "years": "2024",
    "quarter": 1,    //季度
    "rate": 9.8,
    "views": 537,
    "commentnum": 8197,
    "introduction": "简介：每个人都有不可告人的一面。这是一个世界各国均暗地里进行激烈情报战的时代。奥斯塔尼亚（Ostania）与维斯达利斯（Westalis）的冷战状态已经持续数十年。<黄昏>是维斯达利斯情报局奥斯塔尼亚对策科<WISE>的一名优秀间谍。为调查威胁两国和平的人物——奥斯塔尼亚国家统一党总裁多诺万·德斯蒙，上级给予了他一个绝密任务。任务名为：<枭（Strix）>行动。内容是“一周之内组建家庭，潜入德斯蒙儿子就读的名门学校的联谊会”。于是<黄昏>扮演成精神科医生劳埃德·福杰，开始组建家庭。然而，他找来的女儿阿尼亚是个能读心的超能力者，妻子约尔是个",
    "image": "/src/assets/one.jpg"

};

export default {
    data() {
        return {
            score: 7,

            starIndex: -1,
            showShort:true,
            star: [0, 1, 2, 3, 4], // 分数
            spanime: anime,
            id: null // 用于存储接收到的ID
        };
    },
    computed: {
        fullStars() {
            return Math.floor(this.spanime.rate / 2);
        },
        halfStar() {
            return this.spanime.rate % 2 !== 0;
        },
        emptyStars() {
            return 5 - this.fullStars - (this.halfStar ? 1 : 0);
        },
      
         currentComponent() {
            return this.showShort ? 'short' : 'long';
         }
    },

    components: {
        Navbar,
        short,
        long
    },
    methods: {
        toggleComponent() {
            
            this.showShort = !this.showShort;
            console.log(this.showShort);
        }

    },
    created() {
        // 获取URL参数
        const urlParams = new URLSearchParams(window.location.search);
        this.id = urlParams.get('id');
    }
}
</script>

<style lang="scss" scoped>
.container {
    padding: 0 300px; // 两边留空200px
    background-color: #e5e3e3;
    display: flex;
    flex-direction: column;
    height: 700px;
    overflow-y: auto;
    /* 在垂直方向上添加滚动条 */
}

.top-section {
    color: #fff;
    height: 400px; // 上部分固定高度400px
    background-color: #bba39e; // 示例背景色
}

.bottom-section {
    flex-grow: 1; // 下部分根据内容延伸
    max-height: 2000px; // 最大高度2000px
 
    background-color: #ffffff; // 示例背景色
}

//bilibili

.media-info-inner {
    padding: 44px 0 38px;
}

.ani-pic {
    float: left;
    width: 233px;
    height: 308px;
    position: relative;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border: 4px solid #fff;
    border-radius: 8px;
}

.common-lazy-img {

    background-size: 50px;
    width: 100%;
    height: 100%;
    display: inline-block;
    vertical-align: top;
}

.picture {
    width: 225px;
    height: 300px;
}

.media-info-right {
    margin-left: 250px;
    margin-right: 58px;
}

//title

.media-info-title {
    white-space: nowrap; //防止换行
    overflow: hidden;
    text-overflow: ellipsis; //超出部分显示省略号
}

.media-info-title-t {
    display: inline-block; //行内块级元素
    font-size: 20px;
    line-height: 22px;
    font-weight: 700;
    color: #fff;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.media-tags {
    opacity: 0;
    display: inline-block;
    margin-left: 20px;
    vertical-align: top; //垂直方向顶端对齐
}

.media-tag {
    font-size: 12px;
    display: inline-block;
    vertical-align: middle; //顶端居中对齐
    margin-right: 10px;
    height: 20px;
    padding: 0 4px;
    line-height: 20px;
    color: #fff;
    border: 1px solid #fff;
    border-radius: 3px; //边框圆角3像素
}

//data
.media-info-datas {
    height: 80px;
}

.media-info-count {
    font-size: 12px;
    color: #222;
    padding-top: 25px;
    line-height: 1;
    float: left;
}



.media-info-count-item {
    display: inline-block;
    width: 76px;
    text-align: center;
    border-right: 1px solid #fff;
    text-indent: 14px;
    height: 50px;
}

.media-info-label {
    margin-top: 5px;
    margin-bottom: 5px;

    display: block;
    color: #fff;
    line-height: 20px;
    min-height: 20px;
}

//time
.media-info-time {
    margin-top: 10px;
    margin-bottom: 10px;
}

//introduction
.media-info-intro {
    margin-top: 11px;
    font-size: 12px;
    color: #fff;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 4;
    overflow: hidden;
    line-height: 20px;
    min-height: 80px;
}

.star {
    font-size: 36px;
}

.full {
    color: gold;
}

.half {
    background: linear-gradient(to right, gold 50%, lightgray 0);

    background-clip: text;

    -webkit-background-clip: text;

    -webkit-text-fill-color: transparent;
}

.empty {
    color: lightgray;
}

.rate {
    font-size: 36px;
    color: gold;
    margin-left: 50px;
}

//nav

.media-tab-nav {
    position: relative;
    height: 60px;
    background-color: #848282;
    margin-bottom: 11px;
}

.media-tab-nav ul {
    width: 1280px;
    margin: 0 auto;
    position: relative;
    list-style: none;
}

.media-tab-nav ul li {
    cursor: pointer;
    float: left;
    padding: 0 6px;
    line-height: 58px;
    color: #222;
    -webkit-transition: all .1s linear;
    transition: all .1s linear;
    border-bottom: 3px solid rgba(0,0,0,0);
    max-height: -1px;
}
</style>
