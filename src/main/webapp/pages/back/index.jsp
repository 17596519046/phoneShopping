<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>

<body>

    <div style="width: 99%; height: 100px; background: #4C84FF; margin: auto">
        <img src="../../img/image/backhome.jpg" width="100%" height="100px" />
    </div>

    <div style="padding: 5px;">
    <div id="sidebar" class="sidebar py-3" style="width: 20%; float: left">
        <div class="list-group">
            <a href="/back/user" target="right" class="list-group-item">管理员管理</a>
            <a href="/product/product" target="right" class="list-group-item">手机类别管理</a>
            <a href="/back/vip" target="right" class="list-group-item">会员管理</a>
            <a href="/phone/phone" target="right" class="list-group-item">手机管理</a>
            <a href="/back/order" target="right" class="list-group-item">订单管理</a>
        </div>
    </div>
    <div class="sidebar py-3" style="width: 79%; float: right">
        <div class="embed-responsive embed-responsive-4by3">
            <iframe id="aa" name="right" class="embed-responsive-item" src="/back/user"></iframe>
        </div>
    </div>
</div>


<script type="text/javascript">
    // $(document).ready(function () {
    //     $('a').click(function (e) {
    //         e.preventDefault();
    //         $('a').removeClass('active');
    //         $(this).addClass('active');
    //     });
    // });
</script>

</body>

</html>
