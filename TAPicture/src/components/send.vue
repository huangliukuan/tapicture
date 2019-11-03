<template>
<div class="container">
  <div class="ctext">
    <van-field v-model="message"  rows="4"  autosize 
     type="textarea"  placeholder="记录开心一刻...." />
  <van-uploader v-model="files" multiple :max-count="9" :before-read="beforeRead"/>
  </div>
  <van-button color="#5dc4f7"  round size="small" @click="sendInfo">发送</van-button>
</div>
</template>
<script>
import { Toast } from 'vant';
export default {
  data() {
    return {
      files: [],
      message:""
    }
  },
  methods:{
     // 返回布尔值
    //  上传之前的校验
    beforeRead(file) {
      if (file.type !== 'image/jpeg'&&file.type !== 'image/png') {
          Toast('请上传 jpg/png 格式图片');
        return false;
      }
      return true;
    },
    sendInfo(){
      for(var i=0;i<this.files.length;i++){
        console.log(this.files[i])
        this.upfile(this.files[i]);
      } 
    },
    upfile(file){
       var item = {
          name: file.name,
          uploadPercentage: 0
      };
      this.files.push(item);
      var fd = new FormData();
      fd.append('logo', file);
      var xhr = new XMLHttpRequest();
      xhr.open('POST','http://127.0.0.1:3000/upload', true);
      xhr.upload.addEventListener('progress', function (e) {
          item.uploadPercentage = Math.round((e.loaded * 100) / e.total);
      }, false);
      xhr.send(fd);
    }
  },
  created(){

  }

}
</script>
<style scoped>
.container{
  padding: 15px;
}
.van-button{
  position: relative;
  top: 0;
  right: 0;
}
.ctext{
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 15px;
  margin-bottom: 20px;
}
</style>