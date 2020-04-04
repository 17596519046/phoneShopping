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
    <c:if test="${all.get(0).status == 1 && systemUser.roleId == 1}">
        <a class="btn btn-default" href="../../pages/back/user-update.jsp" role="button">添加管理员</a>
    </c:if>
    <table class="table table-bordered">
        <tr>
            <td>姓名</td>
            <td>密码</td>
            <td>邮箱</td>
            <td>手机</td>
            <td>创建时间</td>
            <td>角色</td>
            <c:if test="${systemUser.roleId == 1}">
                <td>操作</td>
            </c:if>
        </tr>

        <c:forEach items="${all }" var="all">

            <tr>
                <td>${all.loginName}</td>
                <td>${all.loginPassword}</td>
                <td>${all.userEmail}</td>
                <td>${all.userPhone}</td>
                <td>${all.cretatDate}</td>
                <td>${all.roleName}</td>

                <c:if test="${systemUser.roleId == 1}">
                    <td>
                        <a href="/back/getOneUser?userId=${all.id }">修改</a>
                        <a href="/back/deleteUser?userId=${all.id }">删除</a>
                    </td>
                </c:if>
            </tr>

        </c:forEach>

</table>

</div>
</body>
</html>
