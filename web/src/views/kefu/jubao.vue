<template>
  <div class="kefu">
    <div v-title data-title="✌🐔大学  |  违规举报"></div>
    <div class="main">
      <el-page-header @back="$router.back(-1)" content="违规举报"></el-page-header>

      <el-form
        v-if="type===0"
        ref="form"
        :model="form"
        label-width="120px"
        size="medium "
        style="margin-top:40px"
      >
        <el-form-item label="举报的账号">
          <el-input v-model="form.jubao_user" useCustomImageHandler ></el-input>
        </el-form-item>
          <el-form-item label="违规类容地址">
          <el-input v-model="form.jubao_url" useCustomImageHandler ></el-input>
        </el-form-item>
          <el-form-item label="截图">
            <el-upload
              :action="$axios.defaults.baseURL+'/uplod'"
              list-type="picture-card"
              :on-success="uploadsuccess"
              :on-remove="handleRemove"
              :file-list="this.jubao_img"
            >
              <i class="el-icon-plus" ></i>
            </el-upload>
            <el-dialog>
              <img width="100%" :src="jubao_img" alt />
            </el-dialog>
          </el-form-item>
        <el-form-item label="举报描述">
          <el-input type="textarea" :rows="10" placeholder="请输入反馈的内容" v-model="form.jubao_content"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="onSubmit">确定</el-button>
          <el-button>取消</el-button>
        </el-form-item>
      </el-form>
      <div v-else style="margin-top:50px">
        <div class="top">
          <el-button type="success" icon="el-icon-check" style="margin-right:50px" circle></el-button>举报成功
        </div>
        <div class="bottom">
           <P style="text-indent:2em;">感谢您的举报，我们会尽快做出处理，根据用户的违规程度，我们会对账号进行时间不等的封号处理，对于违规类容绝不姑息</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "",
  data() {
    return {
      type: 0,
        jubao_img: [],
      form: {
        jubao_content: "",
        jubao_user: "", //  用户di
        jubao_img: [],
        jubao_url: "",
        jubao_type: "jubao"
      }
    };
  },
  methods: {
     uploadsuccess(res) {
      this.form.jubao_img.push({ url: res.url });
      this.jubao_img.push({ url: res.url });
    },
    //文件列表移除文件时的钩子
    handleRemove(file, fileList) {
      // console.log(file, fileList);
      let b =  this.form.kefu_img.indexOf(file);
       this.form.kefu_img.splice(b, 1);
      // console.log( this.form.kefu_img);
    },
    async onSubmit() {
       this.form.jubao_img = JSON.stringify(this.form.jubao_img);
      let res = await this.$axios.post(
        "/webadmin/createjubao",
        this.qs.stringify(this.form)
      );
      let data = res.data.data;
      if (res.data.state.type === "SUCCESS") {
        this.$message.success("举报成功");
        this.type = 1;
      }
    },
    seturl(){
      this.form.jubao_url=unescape(this.$route.query.url)
      this.form.jubao_user=this.$route.query.user
      console.log(123)
    }

  },
  created(){
    this.$route.query&&this.seturl()
  }
};
</script>
<style  scoped>
.kefu {
  width: 50%;
  min-height: 500px;
  margin: 0 auto;
  border-style: solid;
  border-width: 5px;
  border-radius: 25px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 30px;
}
.kefu .main {
  margin: 0 auto;
  width: 80%;
}
.top{
  width: 200px;
  font-size: 20px;
  margin: 0 auto;
    padding: 60px;
}
.bottom{
  font-size: 15px;

}
</style>