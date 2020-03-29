<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="root61">
<head>
    <style type="text/css">.protocol a {
        color: #c81623;
        text-decoration: underline;
    }</style>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>个人信息</title>
    <link rel="icon" href="/img/image/fav.jpg"/>
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css">
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/reg/3.0.0/css/tinyscrollbar-170524.css">
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
    <script type="text/javascript" async="" src="https://wl.jd.com/wl.js"></script>
    <script type="text/javascript" async="" src="//seq.jd.com/js/s.js?v=6"></script>
    <script type="text/javascript">window.pageConfig = {compatible: true};</script>
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/1.0.0/base.js"></script>
    <script>
        seajs.off('load');
        seajs.off('fetch');
        seajs.config({alias: {e2: '//verify.jd.com/static/gridcaptcha/dist/js/lib/e2.js'}});
    </script>
    <link source="widget" type="text/css" rel="stylesheet"
          href="//misc.360buyimg.com/user/reg/3.0.0/widget/??/header/header.css,/common/common.css,/progress-bar/progress-bar.css,/reg-steps/reg-steps.css,/foreign-number-layer-170524/foreign-number-layer-170524.css,/footer/footer.css">
    <script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/shape.js"></script>

    <script src="//ivs.jd.com/slide/js/jdSlide.1.0.min.js"></script>

    <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/dialog/1.0.0/dialog.css">
</head>
<body>
<div class="header">
    <div class="logo-con w clearfix">
            <a href="#" style="height: 60%;background-image: url('/img/image/yu.jpg');background-size: cover;background-position: 0px -50px"  class="logo ">
        </a>
        <div class="logo-title">个人信息</div>
    </div>
</div>
<!-- widget header end -->
<div class="container w">


    <div class="progress-bar clearfix">
    </div>
    <div class="main ">
        <div class="reg-form">
            <form action="/before/updateMyselfInfo" method="POST" onsubmit="return checkSubmit()">
                <div id="step2-wrap" style="display:block;">
                    <div id="loginName"  style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">用 户&nbsp; 名</label>
                        <input id="userName" value="${user.userName}" readonly="readonly" name="userName" onblur="registerVerify()" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="userInfo" style="position: absolute;margin-top: 10px;margin-left: 1%;color: green"></i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                        <input value="${user.password}" name="password" type="password" id="password" onblur="passwordVerify()" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="passwordInfo" style="position: absolute;margin-top: 10px;margin-left: 1%;color: green"></i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">手 机 &nbsp;号</label>
                        <input value="${user.phone}" id="phone" onblur="phoneVerify()" name="phone" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="phoneInfo" style="position: absolute;margin-top: 10px;margin-left: 1%"></i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
                        <input value="${user.email}" id="email" onblur="emailVerify()" name="email" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="emailInfo" style="position: absolute;margin-top: 10px;margin-left: 1.5%"></i>
                    </div>
                    <div>
                        <button class="btn-register" id="form-register" onclick="register()">修改                      </button>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <!--<div class="back-btn" id="back-btn">返回上一步</div>-->
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript"
        src="//seq.jd.com/jseqf.html?bizId=JD_register_pc&amp;platform=js&amp;version=1"></script>
<script src="//cdn.bootcss.com/json2/20150503/json2.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/common/jquery-1.11.1.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/personal/seajs-text.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/common/underscore-min.js"></script>
<script type="text/javascript">
    seajs.use('//misc.360buyimg.com/user/reg/3.0.0/js/personal/register-200204', function (reg) {
        reg.init();
    });
</script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/widget/common/common.js"
        source="widget"></script>
<script src="//payrisk.jd.com/js/td.js"></script>
<script src="https://gia.jd.com/y.html?v=0.05015829629434576&amp;o=reg.jd.com/p/regPage"></script>
<script type="text/javascript">
    $(function () {
        getJdEid(function (eid, fpid) {
            $("#eid").val(eid);
            $("#sessionId").val(fpid);
        });
    });
</script>
<script type="text/javascript">
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = document.location.protocol + '//wl.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();


    //邮箱正则验证
    function emailVerify() {
        var email = $("#email").val();
        var isEmail = IsEmail(email);
        if(isEmail == false){
            $("#emailInfo").html("请输入正确的邮箱格式").css({"color": "red"});
            $("#email").val('');
        }else{
            $("#emailInfo").html("")
        }
    }

    //密码正则验证
    function passwordVerify() {
        var password = $("#password").val();
        var IsPassword = isPassword(password);
        if(IsPassword == false){
            $("#passwordInfo").html("请输入正确的密码格式").css({"color": "red"});
            $("#password").val('');
        }else{
            $("#passwordInfo").html("")
        }
    }

    //手机号正则验证
    function phoneVerify() {
        var phone = $("#phone").val();
        var isTelCode = IsPhone(phone);
        if(isTelCode == false){
            $("#phoneInfo").html("请输入正确的手机号格式").css({"color": "red"});
            $("#phone").val('');
        }else{
            $("#phoneInfo").html("")
        }
    }

    /*校验密码格式（只能输入6-20个字母、数字、下划线） */
    function isPassword(str) {
        var reg=/^(\w){6,20}$/;
        return reg.test(str);
    }

    /*校验电话码格式 */
    function IsPhone(str) {
        var reg=/^[1][3,4,5,7,8][0-9]{9}$/;
        return reg.test(str);
    }

    //校验邮件地址是否合法
    function IsEmail(str) {
        var reg=/^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
        return reg.test(str);
    }


    function checkSubmit() {
        var userName= $("#userName").val();
        var password= $("#password").val();
        var phone= $("#phone").val();
        var email= $("#email").val();
        if(userName == '') {
            $("#userInfo").html("用户名不能为空").css({"color": "red"});
            return false
        }
        if(password == '') {
            $("#userInfo").html("")
            $("#passwordInfo").html("密码不能为空").css({"color": "red"});
            return false
        }
        if(phone == '') {
            $("#newPasswordInfo").html("")
            $("#phoneInfo").html("手机号不能为空").css({"color": "red"});
            return false
        }
        if(email == '') {
            $("#phoneinfo").html("")
            $("#emailInfo").html("邮箱不能为空").css({"color": "red"});
            return false
        }
        $("#emailInfo").html("")
        return true
    }
</script>
<script src="//gias.jd.com/js/td.js"></script>
</body>
</html>
