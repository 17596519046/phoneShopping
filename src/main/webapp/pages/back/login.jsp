<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link rel="stylesheet" media="screen" href="../../css/style.css">
  <link rel="stylesheet" type="text/css" href="../../css/reset.css"/>
</head>
<body>

<div id="particles-js">
  <div class="login">
    <div class="login-top">
      登录
    </div>
    <div class="login-center clearfix">
      <div class="login-center-img"><img src="../../img/image/name.png"/></div>
      <div class="login-center-input">
        <input type="text" name="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
        <div class="login-center-input-text">用户名</div>
      </div>
    </div>
    <div class="login-center clearfix">
      <div class="login-center-img"><img src="../../img/image/password.png"/></div>
      <div class="login-center-input">
        <input type="password" name="password" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
        <div class="login-center-input-text">密码</div>
      </div>
    </div>
    <div id="submit" class="login-button">
      登陆
    </div>
  </div>
  <div class="sk-rotating-plane"></div>

</div>

<script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script>
    // 登陆
    $("#submit").live('click',function(){
        var p = $("input[name=password]");
        var t = $("input[name=username]");
        if(t.val() == '' || p.val() ==''){
            alert("用户名或密码不能为空~");
            return false;
        }else{
            $.ajax({
                url:"/back/toLogin",
                data:{
                    username : t.val(),
                    password : p.val()
                },
                dataType: "json",
                type: 'POST',
                success:function(json) {
                    if(json.success) {
                        window.location.href= "/back/index";
                    } else {
                        alert("用户名或密码错误");
                        return false;
                    }
                }
            });
        }
    });

</script>

</body>
</html>
