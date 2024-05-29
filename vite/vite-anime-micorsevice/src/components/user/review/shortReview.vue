<template>
    <div>
        <div>
            <button class="circle-button" @click="showPopup">+</button>
            <div v-if="isPopupVisible" class="overlay">
                <div class="short-review-content">
                    <div class="dialog-close" @click="close">&times;</div>
                    <div class="review-header-wrap">
                        <div class="review-edit-header">
                            <img :src="parentValue.image"
                                    alt="" class="media-img">
                            <div class="media-info">
                                <h4>怪兽8号</h4>
                                <p class="rate-tip">请发表你对这部作品的评分</p>
                                <div class="rate-wrap">
                                    <ul class="rate-star clearfix">
                                        <li v-for="(star, index) in stars" :key="index" @click="rate(index + 1)" :class="{ active: index < rating }">&#9733;</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="review-body-wrap">
                        <textarea name="short-review" placeholder=""></textarea> 
                        <span class="tip" style="color:#99a2aa;">0/100</span> 
                            <button class="mr-btn active">发表短评</button>
                    </div>
                    
                </div>
            </div>
        </div>
        <short v-for="(item, index) in List" :key="index" :data="item" class="son" />
    </div>
</template>

<script>
import short from '../part/shortView.vue';

const datalist = [
    {
        "rating": 5,
        "user": "Alice",
        "comment": "Amazing show! Loved every episode.",
        "likes": 150,
        "date": "2024-05-01"
    },
    {
        "rating": 4,
        "user": "Bob",
        "comment": "Great storyline but the pacing was a bit slow.",
        "likes": 85,
        "date": "2024-05-02"
    },
    {
        "rating": 3,
        "user": "Charlie",
        "comment": "It was okay, some parts were enjoyable.",
        "likes": 50,
        "date": "2024-05-03"
    },
    {
        "rating": 2,
        "user": "David",
        "comment": "Didn't really enjoy it, found it quite boring.",
        "likes": 30,
        "date": "2024-05-04"
    },
    {
        "rating": 1,
        "user": "Eve",
        "comment": "Terrible show, waste of time.",
        "likes": 10,
        "date": "2024-05-05"
    }
];


export default {
    data() {
        return {
            isPopupVisible: false,
            List: datalist,
            rating: 0, // 当前评分
             stars: Array(5).fill(0) // 创建五个星星

        }
    },
    props: {
      parentValue: Object// 接收并展示来自父组件的值
    },
    components: {
        short
    },
    methods: {
        showPopup() {
            this.isPopupVisible = !this.isPopupVisible;
            console.log(isPopupVisible);
        },
        rate(index) {
          this.rating = index;
          console.log("Rating:", index);
        },
        close(){
            this.isPopupVisible = !this.isPopupVisible;
        }
    }
}
</script>

<style lang="scss" scoped>
.son {
    padding: 20px;
    border: 1px solid #dddddd;
    /* 添加边框 */
}


.circle-button {
    position: fixed;
    right: 100px;
    bottom: 100px;
    width: 100px;
    height: 100px;
    border-radius: 50%;
  background-color: #007bff;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  cursor: pointer;
  border: none;
  font-size: 50px;

    
}




//窗口
.overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 999;
}

.short-review-content {
    position: absolute;
    left: 50%;
    top: 50%;
    width: 594px;
    height: 404px;
    background: #fff;
    border-radius: 4px;
    margin-left: -297px;
    margin-top: -202px;
    cursor: default;
    -webkit-animation: dialog-pulse .6s;
    animation: dialog-pulse .6s;
}

.dialog-close {
    position: absolute;
    font-size: 30px;
    top: 20px;
    right: 22px;
    width: 14px;
    height: 14px;
    display: inline-block;
    background: url(data:image/svg+xml;base64,PHN2ZyBpZD0i5Zu+5bGCXzEiIGRhdGEtbmFtZT0i5Zu+5bGCI…BhLjUuNSwwLDAsMC0uNzEsMGgwWiIvPjwvZz48L2c+PC9nPjwvZz48L2c+PC9nPjwvc3ZnPg==);
    background-size: cover;
    cursor: pointer;
}

.review-header-wrap {
    padding: 30px 30px 20px;
}

.media-img {
    width: 100px;
    height: 133px;
    float: left;
}

.review-edit-header .media-info {
    padding-left: 120px;
}

.review-edit-header .media-info .rate-tip {
    font-size: 14px;
    color: #222;
    margin-top: 10px;
    letter-spacing: 0;
}

.rate-star{
    margin-top: 20px;
    list-style: none; 
}

li{
    display: inline-block;
    color:rgb(135, 133, 133);
    padding-left: 5px;
    font-size: 30px;
}

li.active {
      color: gold; /* 选中星星颜色 */
    }

.review-body-wrap {
    position: relative;
    width: 534px;
    height: 130px;
    border: 1px solid #ccd0d7;
    border-radius: 4px;
    margin: 0 auto;
}

.review-body-wrap textarea {
    width: 510px;
    height: 72px;
    line-height: 24px;
    display: block;
    margin: 12px auto 0;
    font-size: 14px;
    color: #222;
    border: none;
    outline: none;
    resize: none;
    overflow: hidden;
}

.review-body-wrap span.tip {
    position: absolute;
    bottom: 16px;
    right: 16px;
    font-size: 12px;
    color: #99a2aa;
    line-height: 14px;
}

.mr-btn.active {
    background: #00a1d6;
    color: #fff;
    cursor: pointer;
    float:right;
    margin-top: 50px;
}
</style>