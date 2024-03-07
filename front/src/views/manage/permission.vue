<template>
  <div>
    <div style="padding: 5px 0">
<!--      <el-input v-model="text" @keyup.enter.native="load" style="width: 200px"> <i slot="prefix" class="el-input__icon el-icon-search"></i></el-input>-->
      <el-button @click="add" type="primary" size="mini" style="margin: 10px">新增节点</el-button>
    </div>
    <div>
      <el-tree
          :data="tableData"
          node-key="id"
          default-expand-all
          :expand-on-click-node="false">
      <span class="custom-tree-node" slot-scope="{ node, data }">
        <i :class="['el-icon-' + data.icon]"></i><span style="margin-left: 5px; margin-right: 50px">{{ data.name }}</span>
        <span>
          <el-button type="text" size="mini" @click="() => add(data)" v-if="data.parent === 0">添加子节点
          </el-button>
          <el-button type="text" size="mini" @click="() => edit(data)">编辑
          </el-button>
          <el-popconfirm title="确定删除吗？" @confirm="del(data.id)">
            <el-button slot="reference" style="color: orangered; margin-left: 10px" type="text" size="mini">删除</el-button>
          </el-popconfirm>
        </span>
      </span>
      </el-tree>
    </div>

    <!-- 弹窗   -->
    <el-dialog title="菜单信息" :visible.sync="dialogFormVisible" width="30%"
               :close-on-click-modal="false" :close-on-press-escape="false" :show-close="false">
      <el-form :model="entity">
        <el-form-item label="名称" label-width="120px">
          <el-input v-model="entity.name" autocomplete="off" style="width: 80%"></el-input>
        </el-form-item>
        <el-form-item label="描述" label-width="120px">
          <el-input v-model="entity.description" autocomplete="off" style="width: 80%"></el-input>
        </el-form-item>
        <el-form-item label="页面路径" label-width="120px">
          <el-input v-model="entity.path" autocomplete="off" style="width: 80%"></el-input>
        </el-form-item>
        <el-form-item label="图标" label-width="120px">
          <el-input v-model="entity.icon" autocomplete="off" style="width: 80%"></el-input>
        </el-form-item>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="save">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import API from '../../utils/request'
import {resetRouter} from "@/router";
import {setMenu} from "@/utils/manage";

const url = "/api/permission/"

export default {
  name: "Permission",
  data() {
    return {
      text: '',
      user: {},
      tableData: [],
      entity: {},
      dialogFormVisible: false
    };
  },
  created() {
    this.user = sessionStorage.getItem("user") ? JSON.parse(sessionStorage.getItem("user")) : {}
    this.load()
  },
  methods: {
    load() {
      API.get(url).then(res => {
        this.tableData = res.data
      })
    },
    add() {
      this.entity = {}
      this.dialogFormVisible = true
    },
    edit(obj) {
      this.entity = JSON.parse(JSON.stringify(obj))
      this.dialogFormVisible = true
    },
    save() {
      if (!this.entity.id) {
        API.post(url, this.entity).then(res => {
          if (res.code === '0') {
            this.$message({
              type: "success",
              message: "操作成功"
            })
          } else {
            this.$message({
              type: "error",
              message: res.msg
            })
          }
          this.load()
          this.dialogFormVisible = false

          // 重新请求用户基础数据
          API.get("/api/user/" + this.user.id).then(res => {
            let token = this.user.token
            this.user = res.data
            this.user.token = token
            sessionStorage.setItem("user", JSON.stringify(this.user))
            // 重置路由
            resetRouter(JSON.parse(JSON.stringify(res.data.permission)))
            // 设置菜单
            setMenu(JSON.parse(JSON.stringify(res.data.permission)))
          })
        })
      } else {
        API.put(url, this.entity).then(res => {
          if (res.code === '0') {
            this.$message({
              type: "success",
              message: "操作成功"
            })
          } else {
            this.$message({
              type: "error",
              message: res.msg
            })
          }
          this.load()
          this.dialogFormVisible = false

          // 重新请求用户基础数据
          API.get("/api/user/" + this.user.id).then(res => {
            let token = this.user.token
            this.user = res.data
            this.user.token = token
            sessionStorage.setItem("user", JSON.stringify(this.user))
            // 重置路由
            resetRouter(JSON.parse(JSON.stringify(res.data.permission)))
            /// 设置菜单
            this.$emit('call');
          })
        })
      }
    },
    del(id) {
      API.delete(url + id).then(res => {
        if (res.code === '0') {
          this.$message({
            type: "success",
            message: "操作成功"
          })
        } else {
          this.$message({
            type: "error",
            message: res.msg
          })
        }
        this.load()

        // 重新请求用户基础数据
        API.get("/api/user/" + this.user.id).then(res => {
          let token = this.user.token
          this.user = res.data
          this.user.token = token
          sessionStorage.setItem("user", JSON.stringify(this.user))
          /// 设置菜单
          this.$emit('call');
        })

      })
    }
  },
};
</script>

<style scoped>
</style>
