<template>
  <div class="createoldstuff">
    <h2>{{id?'编辑':'发布' }}二手信息</h2>
    <el-tabs type="border-card">
      <el-tab-pane label="二手详情">
         <el-form ref="form" :model="form" label-width="150px" size="medium ">
      <el-form-item label="物品图片">
        <el-upload
          :action="$axios.defaults.baseURL+'/uplod'"
          :show-file-list="false"
          :on-success="uplogsuccess"
          class="avatar-uploader"
        >
          <img v-if="form.oldstuff_img" :src="form.oldstuff_img" class="avata" />
          <i v-else class="el-icon-plus avatar-uploader-icon"></i>
        </el-upload>
      </el-form-item>
      <el-form-item label="名称">
        <el-input v-model="form.oldstuff_name"></el-input>
      </el-form-item>
      <el-form-item label="价格">
        <el-input v-model="form.oldstuff_price"></el-input>
      </el-form-item>
      <el-form-item label="分类">
        <el-radio
          v-for="(item,id) in lable"
          :key="id"
          :class="'page_span_'+id "
          v-model="form.oldstuff_lable"
          :label="item"
        >{{item}}</el-radio>
      </el-form-item>
      <el-form-item label="物品详情描述">
        <vue-editor
          useCustomImageHandler
          @image-added="handleImageAdded"
          v-model="form.oldstuff_content"
        ></vue-editor>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit">确定</el-button>
        <el-button @click="$router.push('/admin/createoldstufflist') ">取消</el-button>
      </el-form-item>
    </el-form>
      </el-tab-pane>
      <el-tab-pane label="预想购买">
                <el-table :data="tableData" border style="width: 100%">
          <el-table-column fixed prop="createtime" label="创建日期">
            <template slot-scope="scope">{{ scope.row.joins_createtime | dataFormat }}</template>
          </el-table-column>
          <el-table-column prop="describe" label="联系方式"></el-table-column>
          <el-table-column prop="name" label="报价"></el-table-column>
        </el-table>
      </el-tab-pane>
    </el-tabs>
   
  </div>
</template>
<script>
import { VueEditor } from "vue2-editor";
export default {
  data() {
    return {
      tableData:[],
      lable: [],
      form: {
        oldstuff_img: "",
        oldstuff_name: "",
        oldstuff_price: "",
        oldstuff_content: "<ol><li>联系时请说明是“✌🐔大学”</li></ol>",
        oldstuff_lable: ""
      }
    };
  },
  components: {
    VueEditor
  },
  props: {
    id: {}
  },
  methods: {
    /**
     * npm install vue2-editor
     *
     * 富文本编辑器图片上传
     */
    async handleImageAdded(file, Editor, cursorLocation, resetUploader) {
      const formData = new FormData();
      formData.append("file", file);
      const res = await this.$axios.post("/uplod", formData);
      console.log(res);
      Editor.insertEmbed(cursorLocation, "image", res.data.url);
      resetUploader();
    },
    //文件上传成功时的钩子
    uplogsuccess(res) {
      this.form.oldstuff_img = res.url;
    },
    //二手信息添加修改
    async onSubmit() {
      let res;
      if (this.id) {
        res = await this.$axios.post(
          "/webadmin/updateoldstuff",
          this.qs.stringify(this.form)
        );
      } else {
        res = await this.$axios.post(
          "/webadmin/createoldstuff",
          this.qs.stringify(this.form)
        );
      }
      let data = res.data.data;
      if (res.data.state.type === "SUCCESS") {
        this.$message.success("成功");
        this.$router.push("/admin/createoldstufflist");
      }
    },
    //获取用户信息
    async getuser() {
      let res = await this.$axios.post("/webadmin/getuser");
      this.form = res.data.data;
      console.log(this.form);
      console.log(res);
    },
    async lablelist() {
      let res = await this.$axios.post(
        "/admin/lablelist",
        this.qs.stringify({ lable_name: "二手分类" })
      );
      if (res.data.state.type === "SUCCESS") {
        // this.lable = res.data.data
        this.lable = JSON.parse(res.data.data[0].lable);
        console.log("分类列表");
        console.log(this.lable);
      }
    },
    async getoldstuffdetails() {
      const res = await this.$axios.post(
        "/webadmin/getoldstuffdetails",
        this.qs.stringify({ id: this.id })
      );
      this.form = res.data.data;
    },
     async getjoinslist() {
      const res = await this.$axios.post(
        "/webadmin/getwebjoinslist",
        this.qs.stringify({ id: this.id })
      );
      this.tableData = res.data.data;
    },
  },
  created() {
    // this.getuser();
    this.lablelist();
    this.id && this.getoldstuffdetails();
    this.id && this.getjoinslist();

  }
};
</script>
<style >
.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
.avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  line-height: 178px;
  text-align: center;
}
.avata {
  width: 178px;
  height: 178px;
  display: block;
}
</style>

