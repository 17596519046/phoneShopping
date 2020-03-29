<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- 引入样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <!-- 引入组件库 -->
    <script src="https://unpkg.com/vue"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/vue@2.6.8/dist/vue.js"></script> -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>


<style>
    body {
        margin: 0px;
        padding: 0px;
    }
</style>

<body>
<div id="app">
    <template>

        <el-button v-if="isShow" @click="addUser">添加用户</el-button>
        <el-table
                :data="tableData"
                border
                style="width: 100%" v-if="isShow">
            <el-table-column
                    prop="userName"
                    label="姓名"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="email"
                    label="邮箱">
            </el-table-column>
            <el-table-column
                    prop="phone"
                    label="手机">
            </el-table-column>
            <el-table-column
                    prop="createTime"
                    label="创建时间"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="roleName"
                    label="角色"
                    width="180">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="操作"
                    width="100">
                <template slot-scope="scope">
                    <el-button type="text" size="small" @click="editItem(scope.row)">编辑</el-button>
                    <el-button @click="deleteClick(scope.row)" type="text" size="small" :plain="true">
                        删除
                    </el-button>
                </template>
            </el-table-column>
        </el-table>

        <el-form :model="ruleForm" status-icon ref="ruleForm" label-width="100px" class="demo-ruleForm" v-if="!isShow">
            <el-form-item label="姓名" prop="userName">
                <el-input type="userName" v-model="ruleForm.userName" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="id" prop="id" v-if="false">
                <el-input type="id" v-model="ruleForm.id" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="密码" prop="password">
                <el-input type="password" v-model="ruleForm.password" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="邮箱" prop="email">
                <el-input v-model="ruleForm.email"></el-input>
            </el-form-item>
            <el-form-item label="手机号" prop="phone">
                <el-input v-model.number="ruleForm.phone"></el-input>
            </el-form-item>
            <el-form-item label="手机号" prop="phone">
                <el-select v-model="value" placeholder="角色">
                    <el-option
                            v-for="item in options"
                            :key="item.value"
                            :label="item.label"
                            :value="item.value">
                    </el-option>
                </el-select>
            </el-form-item>
            <el-form-item>
                <el-button type="primary" @click="submitForm(ruleForm)">提交</el-button>
            </el-form-item>
        </el-form>

    </template>
</div>
</body>
<!-- import Vue before Element -->
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<!-- import JavaScript -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
    new Vue({
        el: '#app',
        data() {
            return {
                tableData: [],
                isShow: true,
                ruleForm: {
                    userName: '',
                    password: '',
                    email: '',
                    phone: '',
                    roleId: 2
                },
                options: [{
                    value: 1,
                    label: '超级管理员'
                }, {
                    value: 2,
                    label: '普通管理员'
                }],
                value: ''
            };
        },
        methods: {
            getArticle: function () {
                var that = this;
                var param = new URLSearchParams();
                axios.get('/back/selectSystemUserList', param).then(function (result) {
                    var obj = JSON.parse(JSON.stringify(result));
                    var json = obj.data;
                    that.tableData = json;
                });
            },
            deleteClick(row) {
                var that = this;
                var param = new URLSearchParams();
                param.append('userId', row.id)
                axios.post('/back/deleteUser', param).then(function (result) {
                    that.$message({
                        message: '删除成功',
                        center: true
                    });
                });
                this.getArticle();
            },
            editItem(row) {
                var that = this;
                that.isShow = false;
                that.ruleForm = row;
                that.value = row.roleId;
            },
            addUser() {
                var that = this;
                that.isShow = false;
            },
            submitForm(formName) {
                var that = this;
                var param = new URLSearchParams();
                if (formName.id == undefined) {
                    param.append("id",0);
                } else {
                    param.append("id",formName.id);
                }
                param.append("userName", formName.userName);
                param.append("password", formName.password);
                param.append("email", formName.email);
                param.append("phone", formName.phone);
                param.append("roleId", that.value);
                axios.post('/back/updateSystemUser', param).then(function (result) {
                    that.$message({
                        message: '成功',
                        center: true
                    });
                });
                formName.userName = '';
                formName.id = 0;
                formName.password = '';
                formName.email = '';
                formName.phone = '';
                that.isShow = true;
                this.getArticle();
            },
        },
        created: function () {
            this.getArticle();
        }
    })
</script>


</html>
