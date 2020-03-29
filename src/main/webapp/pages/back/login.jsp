<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <script type="text/javascript" src="../../js/jquery-3.3.1.js"></script>
  <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="../../js/vue.js"></script>
  <!-- 引入样式 -->
  <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
  <!-- 引入组件库 -->
  <script src="https://unpkg.com/vue/dist/vue.js"></script>
  <script src="https://unpkg.com/element-ui/lib/index.js"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<style>
  body{
    background: url("../../img/image/1.jpg.jpg") no-repeat center center fixed ;
    background-size:cover;
    text-align:center;
    padding: 10px;
  }
  #app{
    border: 2px solid white;
    margin:auto;
    margin-right: 10px;
    margin-top:200px;
  }
</style>
<body>
<div id="app" style="height: 100%;width: 25%;">
  <label style="color:black;">帐号:</label>
  <el-input style="width: 50%;margin:20px 0px;height: 100%" v-model="number" placeholder="帐号" ></el-input><br/>
  <label style="color:black">密码:</label>
  <el-input style="width: 50%;height: 100%" v-model="password" placeholder="密码"></el-input><br/>
  <el-button style="margin-top:20px;margin-bottom:40px;" type="success"  :disabled="disabled" @click="login" >登录</el-button>
</div>
<script type="text/javascript">
    if (top.location != location) {
        top.location.href = location.href;
    }
</script>
<script>
    new Vue({
        el: '#app',
        data: function() {
            return {
                number: '',
                password:'',
                disabled:true
            }
        },
        methods:{
            login(){
                axios.post('/back/login',{"userName":this.number,"password":this.password}).then(function (result) {
                    var data=result.data;
                    if(data.flag == '0'){
                        alert(data.msg);
                    }else{
                        window.location.href="/back/index";
                    }
                })
            }
        },
        //监视工号和密码必须填写才可以进行登录
        watch:{
            number:function (value) {
                if(value != null && value != ''){
                    if(this.password != null && this.password != ''){
                        this.disabled = false;
                    }else{
                        this.disabled = true;
                    }
                }else{
                    this.disabled = true;
                }
            },
            password:function(value){
                if(value != null && value != ''){
                    if(this.number != null && this.number != ''){
                        this.disabled = false;
                    }else{
                        this.disabled = true;
                    }
                }else{
                    this.disabled = true;
                }
            }
        }
    })
</script>
</body>
</html>
