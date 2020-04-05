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
    <a class="btn btn-default" href="/phone/toAddPhone" role="button">添加手机</a>
    <table class="table table-bordered">
        <tr>
            <td width="7%">手机</td>
            <td width="7%">价格</td>
            <td width="50%">详情</td>
            <td width="7%">品牌</td>
            <td width="7%">库存</td>
            <td width="13%">时间</td>
            <td width="7%">操作</td>
        </tr>

        <c:forEach items="${all }" var="all">

            <tr>
                <td>${all.productName}</td>
                <td>${all.productPrice}</td>
                <td>${all.productDetail}</td>
                <td>${all.productType}</td>
                <td>${all.productNum}</td>
                <td>${all.createTime}</td>
                <td>
                    <a href="/phone/getOnePhone?id=${all.id }">修改</a>
                    <a href="/phone/deletePhone?id=${all.id }">删除</a>
                </td>
            </tr>

        </c:forEach>

</table>

</div>
</body>
</html>
