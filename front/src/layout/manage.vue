<template>
  <div><el-container>
    <el-header style="background-color: #545c64; color: #ffd04b">
      <i class=" el-icon-cpu"> BOSS后台管理</i>
      <el-dropdown style="float: right;" @command="handleCommand">
        <span class="el-dropdown-link" style="cursor: pointer; color: #FFF">
          欢迎你！{{ user.username }}<i class="el-icon-arrow-down el-icon--right"></i>
        </span>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item command="person">个人信息</el-dropdown-item>
          <el-dropdown-item command="loginOut">退出登录</el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </el-header>
    <div class="main-content">
      <el-menu class="side-menu" :default-active="$route.path" @select="handleMenuSelect" background-color="#545c64" active-text-color="#ffd04b" text-color="#fff">
        <div v-for="item in permissions" :key="item.path">
          <el-menu-item :index="'/manage' + item.path" v-if="!item.children.length && user.permission.includes(item.id)">
            <i :class="['el-icon-' + item.icon]"></i>
            <span>{{ item.name }}</span>
          </el-menu-item>
          <el-submenu :index="item.path" v-if="item.children.length && user.permission.includes(item.id)">
            <template slot="title">
              <i :class="['el-icon-' + item.icon]"></i>
              <span>{{ item.name }}</span>
            </template>
            <el-menu-item v-for="subItem in item.children" :key="subItem.path" :index="'/manage' + subItem.path"
                          v-if="user.permission.includes(subItem.id)">
              <i :class="['el-icon-' + subItem.icon]"></i>
              <span>{{ subItem.name }}</span>
            </el-menu-item>
          </el-submenu>
        </div>

      </el-menu>

      <router-view class="main-container" :key="Math.random()" @call="getMenu"/>
    </div>
  </el-container></div>
</template>

<script>


import API from "@/utils/request";

export default {
  name: 'Manage',
  components: {},
  data() {
    return {
      user: {},
      permissions: []
    };
  },
  created() {
    this.getMenu()
  },
  methods: {
    getMenu() {
      this.user = sessionStorage.getItem("user") ? JSON.parse(sessionStorage.getItem("user")) : {}
      API.get('/api/permission').then(res => {
        this.permissions = res.data
      })
    },
    handleCommand(command) {
      if (command === 'person') {
        this.$router.push('/manage/person');
      }
      if (command === 'loginOut') {
        sessionStorage.removeItem("user")
        this.$router.replace('/login');

      }
    },
    handleMenuSelect(index) {
      // console.log(index)
      this.$router.push(index);
    },
  },
  computed: {},
}
</script>

<style scoped>
.app-container {
  display: flex;
  flex-direction: column;
  height: 100%;
}

header {
  margin-bottom: 3px;
  line-height: 50px;
  padding: 0 16px;
  font-size: 18px;
  font-weight: bold;
  background-color: #fff;
  box-shadow: 0 0 4px 4px #e6e6e6;
}

.main-content {
  flex: 1;
  display: flex;
  flex-direction: row;
}

.main-container {
  margin-left: 3px;
  padding: 10px;
  flex: 1;
  overflow-y: auto;
  background-color: #fff;
}

.side-menu {
  width: 200px;
  height: 100%;

}

.el-menu-item a {
  text-decoration: none;
}

.el-menu-item.is-active a {
  color: #409EFF;
}
</style>
