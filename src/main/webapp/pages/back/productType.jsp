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
    <%--<a class="btn btn-default" href="../../pages/back/user-update.jsp" role="button">添加分类</a>--%>
    <table class="table table-bordered">
        <tr>
            <td>分类名</td>
            <td>创建时间</td>
            <td>操作</td>
        </tr>

        <c:forEach items="${all }" var="all">

            <tr>
                <td>${all.name}</td>
                <td>${all.createDate}</td>
                <td>
                    <a href="/product/getOneProduct?id=${all.id }">修改</a>
                    <a href="/product/deleteProduct?id=${all.id }">删除</a>
                </td>
            </tr>

        </c:forEach>

        <tr>
            <form class="form-horizontal" action="/product/addProduct">
                <input type="hidden" name="id" class="form-control" id="id" placeholder="分类名称" value="${productType.id}">
                <td><input type="text" name="name" class="form-control" id="name" placeholder="分类名称" value="${productType.name}"></td>
                <td>${productType.createDate}</td>
                <td><button type="submit" class="btn btn-default">提交</button></td>
            </form>
        </tr>

</table>

</div>
</body>
</html>
