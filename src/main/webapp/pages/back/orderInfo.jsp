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
    <table class="table table-bordered">
        <tr>
            <td width="7%">订单号</td>
            <td width="7%">姓名</td>
            <td width="7%">手机号</td>
            <td width="6%">购买手机</td>
            <td width="7%">购买数量</td>
            <td width="7%">订单金额</td>
            <td width="35%">收货地址</td>
            <td width="10%">下单时间</td>
            <td width="7%">订单状态</td>
            <td width="7%">操作</td>
        </tr>

        <c:forEach items="${all }" var="all">

            <tr>
                <td>${all.orderCode}</td>
                <td>${all.userName}</td>
                <td>${all.userPhone}</td>
                <td>${all.productname}</td>
                <td>${all.num}</td>
                <td>${all.price}</td>
                <td>${all.address}</td>
                <td>${all.createTime}</td>
                <td>${all.orderStatusStr}</td>
                <td>
                    <a href="/order/updateOrder?id=${all.id }&status=4">发货</a>
                    <c:if test="${systemUser.roleId == 1}">
                        <a href="/order/deleteOrder?id=${all.id }">删除</a>
                    </c:if>
                </td>
            </tr>

        </c:forEach>

    </table>

</div>
</body>
</html>
