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
    <script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>


<style>
    body {
        margin: 0px;
        padding: 0px;
    }
</style>

<body>
<div>

    <form class="form-horizontal" action="/back/updateUser">
        <input type="hidden" name="id" value="${user.id }" />
        <div class="form-group">
            <label for="loginName" class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-10">
                <input type="text" name="loginName" class="form-control" id="loginName" placeholder="Email" value="${user.loginName}">
            </div>
        </div>
        <div class="form-group">
            <label for="loginPassword" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="password" name="loginPassword" class="form-control" id="loginPassword" placeholder="Password"  value="${user.loginPassword}">
            </div>
        </div>
        <div class="form-group">
            <label for="userEmail" class="col-sm-2 control-label">邮箱</label>
            <div class="col-sm-10">
                <input type="text" name="userEmail" class="form-control" id="userEmail" placeholder="Email" value="${user.userEmail}">
            </div>
        </div>
        <div class="form-group">
            <label for="userPhone" class="col-sm-2 control-label">手机号</label>
            <div class="col-sm-10">
                <input type="text" name="userPhone" class="form-control" id="userPhone" placeholder="Email" value="${user.userPhone}">
            </div>
        </div>
        <div class="form-group">
            <label for="role1" class="col-sm-2 control-label">角色</label>
            <div class="col-sm-10">
                <label class="checkbox-inline">
                    <input type="radio" name="roleId" id="role1" value="1" <c:if test="${user.roleId=='1' }">checked="checked"</c:if> > 超级管理员
                </label>
                <label class="checkbox-inline">
                    <input type="radio" name="roleId" id="role2" value="0" <c:if test="${user.roleId=='0' }">checked="checked"</c:if> > 普通管理员
                </label>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">提交</button>
            </div>
        </div>
    </form>

</div>
</body>
</html>
