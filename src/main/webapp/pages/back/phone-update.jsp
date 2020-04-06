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

    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"--%>
    <%--integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"--%>
    <%--crossorigin="anonymous"></script>--%>

    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>


<style>
    body {
        margin: 0px;
        padding: 0px 30px 0 0;
    }
</style>

<body>
<div>

    <form class="form-horizontal" method="post" action="/phone/insertPhone"  enctype="multipart/form-data">
        <input type="hidden" name="id" value="${phone.id }"/>
        <div class="form-group">
            <label for="productName" class="col-sm-2 control-label">手机名称</label>
            <div class="col-sm-10">
                <input type="text" name="productName" class="form-control" id="productName" placeholder=""
                       value="${phone.productName}">
            </div>
        </div>
        <div class="form-group">
            <label for="productPrice" class="col-sm-2 control-label">价格</label>
            <div class="col-sm-10">
                <input type="text" name="productPrice" class="form-control" id="productPrice" placeholder=""
                       value="${phone.productPrice}">
            </div>
        </div>
        <div class="form-group">
            <label for="productDetail" class="col-sm-2 control-label">详情</label>
            <div class="col-sm-10">
                <input type="text" name="productDetail" class="form-control" id="productDetail" placeholder=""
                       value="${phone.productDetail}">
            </div>
        </div>
        <div class="form-group">
            <label for="productNum" class="col-sm-2 control-label">库存</label>
            <div class="col-sm-10">
                <input type="text" name="productNum" class="form-control" id="productNum" placeholder=""
                       value="${phone.productNum}">
            </div>
        </div>
        <div class="form-group">
            <label for="static_dropdown" class="col-sm-2 control-label">品牌</label>
            <div class="col-sm-10">
                <select id="static_dropdown" class="form-control" name="typeId">
                    <c:forEach items="${all }" var="all">
                        <option value="${all.id}"
                                <c:if test="${phone.typeId == all.id }">selected</c:if> >${all.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="img" class="col-sm-2 control-label">图片</label>
            <input type="file" name="file" onchange="showImg()" id="img_file">
            <img id="img" width="20%" src="${phone.productImg}" alt="..." class="img-thumbnail">
            <%--</div>--%>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">提交</button>
            </div>
        </div>
    </form>
</div>
<script>
    function showImg() {
        // var img_file =  $("#img_file").val();
        var file = document.getElementById('img_file').files[0];
        var re = new FileReader();
        re.readAsDataURL(file);
        re.onload = function (re) {
            $('#img').attr("src", re.target.result);
        }
    }

</script>
</body>
</html>
