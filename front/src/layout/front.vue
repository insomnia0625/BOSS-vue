<template>
  <div>
    <!--    头部-->
    <div style="width: 100%; height: 60px; line-height: 60px; background-color: white">
      <el-row>
        <!-- 一行可以被等分成24份-->
        <el-col :span="4" style="background-color: #545c64">
          <!-- LOGO -->
          <div style="font-size: 20px; font-weight: bold; color: #fff; text-align: center">BOSS</div>
        </el-col>
        <el-col :span="14">
          <el-menu class="side-menu" :default-active="$route.path" @select="handleMenuSelect" mode="horizontal" background-color="#545c64" text-color="#fff" active-text-color="#ffd04b">
            <el-menu-item index="/front/home">
              首页
            </el-menu-item>
            <el-menu-item index="/front/notice">
              公告
            </el-menu-item>
            <el-menu-item index="/front/message">
              留言板
            </el-menu-item>
            <el-menu-item index="/front/person">
              个人中心
            </el-menu-item>
          </el-menu>
        </el-col>
        <el-col :span="6" style="background-color: #545c64">
          <div style="text-align: right; padding-right: 10px" v-if="user.id">
            <el-dropdown style="float: right;" @command="handleCommand">
              <span class="el-dropdown-link" style="cursor: pointer; color: #fff">
                欢迎你！{{ user.username }}<i class="el-icon-arrow-down el-icon--right"></i>
              </span>
              <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="person">个人信息</el-dropdown-item>
                <el-dropdown-item command="loginOut">退出登录</el-dropdown-item>
              </el-dropdown-menu>
            </el-dropdown>
          </div>
          <div style="text-align: right; padding-right: 10px" v-else>
            <el-button @click="$router.replace('/login')">登录</el-button>
            <el-button @click="$router.replace('/register')">注册</el-button>
          </div>

        </el-col>
      </el-row>
    </div>

    <!-- 主体 -->
    <el-row>
      <el-col :span="16" :offset="4">
        <router-view></router-view>
      </el-col>
    </el-row>

    <!-- 底部-->
    <div style="height: 60px; width: 100%; background-color: white; padding: 10px 0; position: fixed; bottom: 0; background-color: #545c64; color: #FFF">
      <div style="text-align: center">
        Copyright © 第四组
      </div>
      <div style="text-align: center; padding: 5px ; background-color: #545c64; color: #FFF">
        CQUPT  <span style="margin-left: 20px">重庆邮电大学</span>
      </div>
    </div>

  </div>
</template>

<script>
import router from '@/router';

export default {
  name: "Front",
  data() {
    return {
      user: {}
    }
  },
  created() {
    this.user = sessionStorage.getItem("user") ? JSON.parse(sessionStorage.getItem("user")) : {}
  },
  methods: {
    handleCommand(command) {
      if (command === 'person') {
        this.$router.push('/front/person');
      }
      if (command === 'loginOut') {
        sessionStorage.removeItem("user")
        this.$router.replace('/login');

      }
    },
    handleMenuSelect(index) {
      console.log(index)
      this.$router.push(index);
    },
  }
}
</script>

<style scoped>

</style>
