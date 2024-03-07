<template>
  <div>
    <div style="margin-top: 10px">
      <el-carousel height="260px">
        <!--carousel走马灯组件，轮播图片-->
        <el-carousel-item v-for="item in imgList" :key="item">
          <img style="width: 100%" :src='item' alt="">
        </el-carousel-item>
      </el-carousel>
    </div>

    <!--    其他-->
    <div>
      <h2 align="center">这里是项目主页！</h2>
    </div>
    <el-calendar v-model="value"></el-calendar>
  </div>
</template>

<script>
import API from "@/utils/request";

const url = "/api/video/"

export default {
  name: "Home",
  data() {
    return {
      imgList: [
        "https://ssyerv1.oss-cn-hangzhou.aliyuncs.com/picture/45f42a4e01b04a8bb579809f70b7d373.jpg",
        "https://ssyerv1.oss-cn-hangzhou.aliyuncs.com/picture/99b4156834da429bb3b81f8bb143cf48.jpg",
        "https://ssyerv1.oss-cn-hangzhou.aliyuncs.com/picture/18107fc664194e6e8708433c8aca766d.jpg",
      ],
      user: {},
    };
  },
  created() {
    this.user = sessionStorage.getItem("user") ? JSON.parse(sessionStorage.getItem("user")) : {}
    // this.load()
  },
  methods: {
    detail(id) {
      this.$router.push({path: "/detail", query: {id: id}})
    },
    load() {
      API.get(url + "page", {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: ''
        }
      }).then(res => {
        this.tableData = res.data.records || []
        this.total = res.data.total
      })
    },
    handleSizeChange(pageNum) {
      this.pageNum = pageNum;
      this.load()
    },
    handleCurrentChange(pageSize) {
      this.pageSize = pageSize;
      this.load()
    }
  },
};
</script>

<style scoped>

</style>
