<template>
  <div class="activitycontent">
    <div v-title data-title="✌🐔大学 | 岗位详情"></div>

    <!-- Start of Page Container -->
    <div class="page-container">
      <div class="container">
        <div class="row">
          <!-- start of page content -->
          <div class="span8 page-content">
            <el-page-header @back="$router.back(-1)" :content="content.job_name"></el-page-header>
            <article class="type-post format-standard hentry clearfix">
              <div>
                <div class="show_unit fl ativity">
                  <a class="iconfont ic">&#xe661;</a>
                  <a class="tagname">岗位名称:</a>
                  {{content.job_name}}
                </div>
                <div class="show_unit fl ativity">
                  <a class="iconfont ic">&#xe616;</a>
                  <a class="tagname">类型:</a>
                  {{content.job_lable}}
                </div>
                <div class="show_unit fl ativity">
                  <a class="iconfont ic">&#xe623;</a>
                  <a class="tagname">薪资:</a>
                  {{content.job_salary}}
                </div>
                <div class="show_unit fl ativity">
                  <a class="iconfont ic">&#xe678;</a>
                  <a class="tagname">招聘人数:</a>
                  {{content.job_num}}
                </div>
                <div class="show_unit fl ativity">
                  <a class="iconfont ic">&#xe61a;</a>
                  <a class="tagname">投递方式:</a>
                  {{content.company_mail}}
                </div>
                <div style="clear:both"></div>
                <!--占位-->
              </div>

              <h3>岗位描述</h3>
              <blockquote v-html="content.job_content"></blockquote>
              <h3>公司信息</h3>
              <el-divider></el-divider>
              <router-link :to="'/companycontent/'+content.company_id">{{content.company_name}}</router-link>
              <el-divider></el-divider>
            </article>

            <div class="like-btn">
              <form id="like-it-form" action="#" method="post">
                <span class="like-it">66</span>
                <input type="hidden" name="post_id" value="99" />
                <input type="hidden" name="action" value="like_it" />
              </form>
            </div>

            <comment />
            <!-- end of comments -->
            <!-- end of page content -->
          </div>
          <aside class="span4 page-sidebar">
          <carousel />
          <job/>
          </aside>
          <!-- end of sidebar -->
        </div>
      </div>
    </div>
    <!-- End of Page Container -->
  </div>
</template>


<script>
import carousel from "@/components/carousel.vue";
import comment from "@/components/comment.vue";
import job from "@/components/job.vue";
import { mapState, mapActions } from "vuex";

export default {
  components: {
    carousel,
    comment,
    job
  },
  computed: {
    ...mapState({
      contentuserid: state => state.contentuserid,
      commentnum: state => state.commentnum
    })
  },
  data() {
    return {
      // data: {
      //   type: "", //类型
      //   name: "", //  名称
      //   describe: "", //  描述
      //   content_id: "",
      //   activity_title: "",
      //   to_userid: ""
      // },
      dialogFormVisible: false, //弹框相关
      content: {},
      announcementlist: {}
    };
  },
  props: {
    id: {}
  },
  methods: {
    ...mapActions(["setcontentid", "setcontentinfo"]),

    async getjobcontent() {
      let data = {
        id: this.id
      };
      let res = await this.$axios.post(
        "/web/getjobcontent",
        this.qs.stringify(data)
      );
      if (res.data.state.type === "SUCCESS") {
        this.content = res.data.data;
        console.log("活动详情数据");
        console.log(this.content);
        this.setcontentinfo({
          contentname: res.data.data.job_name,
          contentuserid: res.data.data.user_id
        });
      }
    }
  },
        watch: {
    id: {
      handler(newVal) {
       this.getjobcontent();
    this.setcontentid(this.id);
      },
      deep: true,
      immediate: true
    }
  },
  created() {
    // this.getjobcontent();
    this.setcontentid(this.id);
  }
};
</script>
<style >
.activitycontent {
  min-height: 200px;
}
.tagname {
  margin-right: 16px;
  font-size: 18px;
}
</style>