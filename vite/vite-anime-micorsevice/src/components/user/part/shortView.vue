<template>
    <div class="clearfix">
        
        <div class="review-author-info">
            
            <span class="review-author-name is-vip" style="color: rgb(251, 114, 153);">
               {{ data.user }}
            </span>
            <span class="star-rating">
                        <span v-for="star in fullStars" :key="star" class="star full">&#9733;</span>
                       
                        <span v-for="star in emptyStars" :key="star" class="star empty">&#9734;</span>
                        
            </span>
            <div class="review-author-time">{{data.date}}</div>
        </div>
        <div class="review-detail"><!---->
            <div class="review-content">{{ data.comment }}</div>
        </div> <!---->
        <div class="review-data">
            <span class="agree" @click="add">&#x1F44D;</span>
            <span>{{ data.likes }}</span>
        </div>
       
    </div>
</template>

<script>
export default {
    computed: {
        fullStars() {
            return Math.floor(this.data.rating );
        },
       
        emptyStars() {
            return 5 - this.fullStars;
        },
      
       
    },
    props: {
        data: Object // 接收并展示来自父组件的值
    },
    methods:{
       add(){
        this.data.likes++;
       }
    }
}
</script>

<style lang="scss" scoped>

.review-author-info {
    height: 30px;
    margin-bottom: 20px;
}

div.review-author-name {
    cursor: pointer;
    line-height: 30px;
    font-size: 12px;
    color: #6d757a;
    margin-right: 20px;
    -webkit-transition: all .2s linear;
    transition: all .2s linear;
}

.review-content {
    font-size: 14px;
    line-height: 24px;
    margin-top: 8px;
    max-height: 48px;
    display: block;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    overflow: hidden;
    word-break: break-word;
}

.review-data-item {
    display: inline;
    line-height: 21px;
}

.review-author-time {
    float: right;
    font-size: 12px;
    color: #99a2aa;
    line-height: 30px;
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

.star-rating{
    margin-left:30px;
}

.agree{
    font-size: 20px;
  margin-right: 8px;
  color: white; /* Default color */
}

</style>