<template>
    <el-container style="height: 100%;">
      <el-main>
        <el-form
          ref="animeForm"
          :model="anime"
          label-width="100px"
          style="width: 80%; margin: 0 auto;height: 100%;"
        >
          <el-form-item label="动漫名">
            <el-input v-model="anime.name"></el-input>
          </el-form-item>
          <el-form-item label="动漫简介">
            <el-input type="textarea" v-model="anime.description"></el-input>
          </el-form-item>
          <el-form-item label="年份">
            <el-input v-model="anime.year"></el-input>
          </el-form-item>
          <el-form-item label="国家">
            <el-input v-model="anime.country"></el-input>
          </el-form-item>
          <el-form-item label="图片上传">
            <el-upload
              class="upload-demo"
              :show-file-list="false"
              :default-file-list="[{
                url: anime.image,
                name: '已上传的图片'
             }]"
              :on-success="handleFileUploadSuccess"
              :on-error="handleFileUploadError"
              :before-upload="beforeFileUpload"
            >
              <el-button size="small" type="primary">点击上传</el-button>
            </el-upload>
            <div v-if="anime.image" class="image-container">
              <img :src="anime.image" alt="上传的图片">
            </div>
          </el-form-item>
        </el-form>
        <el-form-item>
          <el-button type="primary" @click="submitAnime">提交</el-button>
        </el-form-item>
      </el-main>
    </el-container>
  </template>
  
  <script>
  export default {
    data() {
      return {
        anime: {
          name: '',
          description: '',
          year: '',
          country: '',
          image: ''
        }
      }
    },
    methods: {
      handleFileUploadSuccess(response) {
        // 获取上传成功后的图片URL
        const imageURL = response.url;
        // 更新anime对象的图片属性
        this.anime.image = imageURL;
      },
      handleFileUploadError(error) {
        console.error('上传文件失败:', error);
      },
      beforeFileUpload(file) {
        if (!this.anime.name) {
        console.error('动漫名为空');
        return false; // 返回false以阻止默认上传行为
         }
         const fileExtension = file.name.split('.').pop();
        // 设置上传的文件名
        const fileName =  `${this.anime.name}.${fileExtension}` ;
        // 生成文件的本地URL
        const imageURL = URL.createObjectURL(file);
        // 更新anime对象的图片属性
        this.anime.image = imageURL;
        console.log(imageURL);
        // 返回false以阻止默认上传行为
        return false;
        
      },
      submitAnime() {
        // 在这里将构造好的 anime 对象发送给后端
        console.log('提交动漫信息：', this.anime);
        // 如果需要重置表单，可以调用下面的方法
        // this.$refs.animeForm.resetFields();
      }
    }
  }
  </script>
  
  
  <style>
  .upload-demo {
    border: 1px dashed #409EFF;
    width: 40%;
    height: 80%;
    border-radius: 6px;
    padding: 20px 0;
    text-align: center;
    color: #666;
    cursor: pointer;
  }
  .image-container {
    margin-top: 20px;
    width: 100%;
    max-width: 600px;
    height: 0;
    padding-top: 56.25%; /* 16:9 高宽比 */
  }
  .image-container img {
    display: flex;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  </style>
  