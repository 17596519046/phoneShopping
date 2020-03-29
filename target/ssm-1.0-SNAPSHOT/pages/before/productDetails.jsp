<%@ page import="com.rich.pojo.SystemUser" %>
<%@ page import="com.rich.service.LoginService" %>
<%@ page import="com.rich.service.impl.LoginServiceImpl" %>
<%@ page import="com.rich.pojo.EvaluateInner" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.rich.pojo.EvaluateInnerVO" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String name = request.getParameter("name");
    String detail = request.getParameter("detail");
    String img = request.getParameter("img");
    String price = request.getParameter("price");
    String id = request.getParameter("id");
    SystemUser user = (SystemUser) request.getSession().getAttribute("user");
    int userId = 0;
    if (null != user) {
        userId = user.getId();
    }
%>
<html>
<head>
    <meta charset="utf8" version="1">
    <title>豫予-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <meta name="description"
          content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!">
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东">
    <link rel="icon" href="//www.jd.com/favicon.ico" mce_href="//www.jd.com/favicon.ico" type="image/x-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">

    <!--[if lte IE 6]>
    <script src="//misc.360buyimg.com/mtd/pc/index/home/ie6tip.min.js"></script>
    <![endif]-->
    <!--[if IE 8]>
    <script src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/lib/polyfill/index.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css"
          href="//static.360buyimg.com/item/unite/1.0.95/components/??default/common/common.css,default/main/main.css,default/address/address.css,default/prom/prom.css,default/colorsize/colorsize.css,default/buytype/buytype.css,default/track/track.css,default/suits/suits.css,default/baitiao/baitiao.css,default/o2o/o2o.css,default/summary/summary.css,default/buybtn/buybtn.css,default/crumb/crumb.css,default/fittings/fittings.css,default/detail/detail.css"/>
    <link rel="stylesheet" type="text/css"
          href="//static.360buyimg.com/item/unite/1.0.95/components/??default/contact/contact.css,default/popbox/popbox.css,default/preview/preview.css,default/info/info.css,default/imcenter/imcenter.css,default/jdservice/jdservice.css,default/vehicle/vehicle.css,default/poprent/poprent.css,default/jdservicePlus/jdservicePlus.css,default/jdserviceF/jdserviceF.css"/>

    <link href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/first-screen.chunk.css" rel="stylesheet">
    <link href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/index.chunk.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/promotional-activity-top.chunk.css">
    <script charset="utf-8"
            src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/promotional-activity-top.chunk.js"></script>
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/legacy.chunk.js"></script>
    <script async="" src="//h5.360buyimg.com/ws_js/gatherInfo.js"></script>
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/seckill.chunk.css">
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/seckill.chunk.js"></script>
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/core1.chunk.css">
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/core1.chunk.js"></script>
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/nice_goods.chunk.css">
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/nice_goods.chunk.js"></script>
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/sidePopMenu.chunk.js"></script>
</head>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/first-screen.chunk.css" rel="stylesheet"/>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/index.chunk.css" rel="stylesheet"/>
<script>
    function search() {
        var key = $("#key").val();
        window.location.href = '/before/main?name=' + key;
    }

    function mySelf() {
        var userId = $("#userId").val();
        if (userId == 0) {
            window.location.href = "/pages/before/login.jsp";
        } else {
            window.location.href = "/before/selectMySelfBuyCarInfo?userId=" + userId
        }
    }

    function myselfOrder() {
        var userId = $("#userId").val();
        if (userId == 0) {
            window.location.href = "/pages/before/login.jsp";
        } else {
            window.location.href = "/before/selectMySelfOrderInfo?userId=" + userId
        }
    }

    function clickArea(area) {
        var key = $("#key").val();
        window.location.href = "/before/main?name=" + key + "&area=" + area;
    }
</script>
<body>
<!--无障碍占位-->
<div id="J_accessibility"></div>
<!--顶通占位 -->
<div id="J_promotional-top">
    <%--<a href="#" target="_blank"--%>
</div>
<div id="shortcut">
    <div class="w">
        <ul class="fl" clstag="h|keycount|head|topbar_01">
            <li class="shortcut_btn dropdown" id="ttbar-mycity"><a href="javascript:void(0);" id="areamini"
                                                                   class="dt cw-icon ui-areamini-text-wrap" style=""
                                                                   aria-haspopup="true" aria-label="地区" role="button"><i
                    class="iconfont iconfont-location"></i><span class="ui-areamini-text" data-id="7"
                                                                  title="河南">${area}</span></a>
                <div class="dd dropdown-layer" tabindex="-1" area-labelledby="areamini" role="menu">
                    <div class="dd-spacer"></div>
                    <div class="ui-areamini-content-wrap" style="left: auto;">
                        <div class="ui-areamini-content">
                            <div class="ui-areamini-content-list">
                                <c:forEach var="vo" items="${areaList}" varStatus="i">
                                    <div class="item"><a data-id="1" href="javascript:void(0)" role="menuitem"
                                                         onclick="clickArea('${vo.area}')"
                                                         class="${vo.area eq area ?'selected':''}"
                                                         tabindex="-1">${vo.area}</a></div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <ul class="fr">
            <li class="fore1 dropdown" id="ttbar-login" clstag="h|keycount|head|topbar_02">
                <c:choose>
                    <c:when test="${user.userName eq null}">
                        <a href="/pages/before/login.jsp" class="link-login">你好，请登录</a>
                        &nbsp;&nbsp;<a
                        href="/pages/before/register.jsp" class="link-regist style-red">免费注册</a>
                    </c:when>
                    <c:otherwise>
                        <a href="#" class="link-login">${user.userName}</a>
                        &nbsp;&nbsp; <a href="#" onclick="myselfOrder()" class="link-login">我的订单</a>
                        &nbsp;&nbsp; <a href="/pages/before/myselfAddress.jsp" class="link-login">收货地址</a>
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>
    </div>
</div>
<div id="header">
    <div class="w">
        <div id="logo" class="logo">
            <h1 class="logo_tit">
                <a href="#"
                   style="background-image: url('/img/image/yu.jpg');background-size: cover;background-position: 0px -35px"
                   class="logo_tit_lk" clstag="h|keycount|head|logo_01">京东</a>
                <%--<a href="#" class="logo_tit_lk" clstag="h|keycount|head|logo_01">京东</a>--%>
            </h1>
            <h2 class="logo_subtit">京东,多快好省</h2>
            <div class="logo_extend" clstag="h|keycount|head|logo_02"></div>
        </div>

        <div id="search">
            <div class="search-m">
                <div class="form" role="serachbox">
                    <%--<ul id="shelper" class="search-helper" style="display: none"></ul>--%>
                    <input clstag="h|keycount|head|search_c" type="text"
                           onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key"
                           accesskey="s" value="${name}"
                           style="width: 100%;height: 100%;background-color: white"
                           class="text"
                           aria-label="搜索"/>
                    <button clstag="h|keycount|head|search_a" onclick="search('key');return false;" class="button"
                            aria-label="搜索">
                        <i
                                class="iconfont">&#xe60b;</i></button>
                </div>

                <div id="settleup" class="dropdown" clstag="h|keycount|head|cart_null">
                    <div class="cw-icon">
                        <i class="iconfont">&#xe60c;</i>
                        <a href="#" onclick="mySelf()">我的购物车</a>
                        <%--<a target="_blank" href="#">我的购物车</a>--%>
                        <i class="ci-count" id="shopping-amount"></i>
                    </div>
                    <div class="dropdown-layer">
                        <div id="J_cart_pop">
                            <div class="cart_empty">
                                <i class="cart_empty_img"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="hotwords" clstag="h|keycount|head|search_d" role=""></div>
    </div>
</div>
<div class="w">
    <div class="product-intro clearfix">
        <div class="preview-wrap">
            <div class="preview" id="preview">
                <div id="spec-n1" class="jqzoom main-img" data-big="1" clstag="shangpin|keycount|product|mainpic_fz">
                    <%--<ul class="preview-btn J-preview-btn">--%>
                    <%--<li>--%>
                    <%--<span class="video-icon J-video-icon" clstag="shangpin|keycount|product|picvideo" style=""></span>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <img id="spec-img"
                    <%--data-origin="//img14.360buyimg.com/n1/jfs/t18325/65/199693094/405715/6f845190/5a61d111N0e4f0567.jpg"--%>
                    <%--alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】"--%>
                         src="<%=img%>"
                         width="350">
                    <%--<i></i>--%>
                    <div id="belt"></div>
                </div>
                <div class="video" id="v-video" data-vu="478474"
                     style="display: none; width: 350px; height: 350px; z-index: 6;">
                    <div class="J-v-player"></div>
                    <a href="#none" class="close-video J-close" clstag="shangpin|keycount|product|closepicvideo"></a>
                </div>
                <script>
                    (function (doc, cfg) {
                        var img = doc.getElementById('spec-img');
                        var src = img.getAttribute('data-origin');
                        var nsz = 300;

                        if ((!cfg.wideVersion || !cfg.compatible) && !cfg.product.ctCloth) {
                            img.setAttribute('width', nsz);
                            /*img.setAttribute('height', nsz);*/
                            img.setAttribute('src', src.replace('s450x450', 's' + nsz + 'x' + nsz));
                        } else {
                            img.setAttribute('src', src);
                        }

                        if (cfg.product.ctCloth) {
                            if (!cfg.wideVersion || !cfg.compatible) {
                                img.setAttribute('width', nsz);
                            }
                        }
                    })(document, pageConfig);
                </script>
            </div>
        </div>
        <div class="itemInfo-wrap">
            <input id="goodsId" type="hidden" value="<%=id%>">
            <input id="userId" type="hidden" value="<%=userId%>">
            <div class="sku-name">
                <%=name%>
            </div>
            <div class="summary summary-first">
                <div class="summary-price-wrap">
                    <div class="summary-price J-summary-price">
                        <div class="dt">豫 予 价</div>
                        <div class="dd">
                            <span class="p-price"><span>￥</span><span
                                    class="price J-p-1048468099"><%=price%></span></span><span
                                class="pricing">
                            <%--[<del id="page_hx_price">￥2388.00</del>]--%>
                        </span>
                            <%--<a class="notice J-notify-sale" data-type="1" data-sku="1048468099" href="#none"--%>
                            <%--clstag="shangpin|keycount|product|jiangjia_2">降价通知</a>--%>
                            <div class="fans-price J-fans-price hide" style="display: none;">
                                <span class="p-price-fans">
                                    <span class="price J-p-f-1048468099"></span>
                                </span>
                                <img src="//img30.360buyimg.com/devfe/jfs/t17683/96/2616723497/1348/5d49daba/5afe6d90Nc2d9965a.png"
                                     alt="fans" class="fans-icon">
                                <span class="text">关注店铺，即享粉丝价</span>
                            </div>

                            <!-- 高端品 限时特惠start，这段代码中的样式，是需要改的，请前端同学定义样式。还有用js代码，完成对应的需求 -->
                            <span class="J-xsth-sale" style="display: none;">
                                    <a href="#none" class="J-xsth-panel"
                                       clstag="shangpin|keycount|product|xianshitehui">限时特惠<s
                                            class="s-arrow">&gt;</s></a>
                                    <i class="sprite-question"></i>
                                </span>
                            <!-- 高端品 限时特惠end -->


                            <div class="plus-price J-plus-price hide" style="display: none;">
                                    <span class="p-price-plus">
                                        <span class="price J-p-p-1048468099"></span>
                                    </span>
                                <a class="plus-icon-linkwrap" clstag="shangpin|keycount|product|plusicon"
                                   href="//plus.jd.com/index" target="_blank"><img
                                        src="//img10.360buyimg.com/da/jfs/t5731/317/890792506/848/391b9a15/59224a28N48552ed2.png"
                                        alt="plus" class="plus-icon"></a>
                                <span class="text"><strong>PLUS会员</strong>专享价</span>
                                <a clstag="shangpin|keycount|product|whatisplus" href="//plus.jd.com/index"
                                   target="_blank">现在开通PLUS会员享限时特惠 &gt;&gt;</a>
                            </div>
                            <div class="user-price J-user-price hide" style="display: none;">
                                    <span class="p-price-user">
                                        <span class="price J-p-s-1048468099"></span>
                                    </span>
                                <img src="//img14.360buyimg.com/devfe/jfs/t5728/113/4603623007/244/a159e46d/59535259N6eed475d.png"
                                     alt="sam's" class="sam-icon">

                                <span class="text">您购买此商品可享受专属价</span>

                                <i class="sprite-question"></i>
                            </div>
                        </div>
                    </div>
                    <div id="summary-quan" class="li p-choose hide" clstag="shangpin|keycount|product|lingquan">
                        <div class="dt">优 惠 券</div>
                        <div class="dd">
                            <dl>
                                <dt class="fl"></dt>
                                <dd class="lh"><a class="J-open-tb" href="#none"> <span class="quan-item"
                                                                                        title="仅可购买卡罗莱旗舰店商品 有效期2020-03-09至2020-03-31">                                    <s></s><b></b>                                        <span
                                        class="text">满1088减80</span>                                </span> <span
                                        class="quan-item" title="仅可购买卡罗莱旗舰店商品 有效期2020-03-09至2020-03-31">                                    <s></s><b></b>                                        <span
                                        class="text">满1688减100</span>                                </span> <span
                                        class="quan-item" title="仅可购买卡罗莱旗舰店商品 有效期2020-03-09至2020-03-31">                                    <s></s><b></b>                                        <span
                                        class="text">满2188减150</span>                                </span> <span
                                        class="more-btn">更多&gt;&gt;</span> </a></dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>

            <div class="summary p-choose-wrap">
                <div class="summary-line"></div>
                <div id="choose-btns" class="choose-btns clearfix">
                    <div class="choose-amount " clstag="shangpin|keycount|product|goumaishuliang_2">
                        <div class="wrap-input">
                            <input class="text buy-num" onkeyup="setAmount.modify('#buy-num');" id="buy-num" value="1"
                                   data-max="200">
                            <a class="btn-reduce" href="#none"
                               data-disabled="1" onclick="subtract()">-</a>
                            <a onclick="add()" class="btn-add" onclick="setAmount.add('#buy-num')" href="#none"
                               data-disabled="1">+</a>
                        </div>
                        <script>
                            function subtract() {
                                var number = $("#buy-num").val();
                                var num = 1;
                                if (number > 1) {
                                    num = number - 1;
                                }
                                $("#buy-num").val(num);
                            }

                            function add() {
                                var number = $("#buy-num").val();
                                var num = parseInt(number) + parseInt(1);
                                $("#buy-num").val(num);
                            }
                        </script>
                    </div>
                    <!--<a id="choose-btn-gift" class="btn-special1 btn-lg" style="display:none;" href="//cart.gift.jd.com/cart/addGiftToCart.action?pid=1048468099&pcount=1&ptype=1" class="btn-gift" clstag="shangpin|keycount|product|选作礼物购买_2"><b></b>选作礼物购买</a>-->
                    <a href="#"
                       class="btn-special1 btn-lg"
                       onclick="addBuyCar()">加入购物车</a>
                    <a id="btn-baitiao" class="btn-special2 btn-lg" style="display:none;"
                       onclick="log(&quot;product&quot;, &quot;dabaitiaobutton_5025_5026_13674&quot;, &quot;1048468099&quot;)">打白条</a>
                    <a href="//jc.jd.com" target="_blank" id="btn-jincai" class="btn-special2 btn-lg"
                       style="display: none;" clstag="shangpin|keycount|product|jincai_2">使用金采</a>
                    <!-- <a href="#none" id="btn-onkeybuy" class="btn-special2 btn-lg" style="display:none;" onclick='log("product", "easybuy_2", "1048468099")'>一键购</a> -->
                </div>
                <div id="choose-btns" class="choose-btns clearfix">
                    <font style="font-weight: bold;font-size: 15px;font-family: 'Arial Black'">商品详情：</font>
                    <span style="font-weight: bold;font-size: 15px;font-family: 'Arial Black'"><%=detail%></span>
                </div>
                <div id="summary-tips" class="summary-tips" clstag="shangpin|keycount|product|wenxintishi_2" style="">
                    <div class="dt">温馨提示</div>
                    <div class="dd">
                        <ol class="tips-list clearfix">
                            <li class="local-txt">·支持7天无理由退货</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="m m-content comment" id="comment">
    <div class="mt"><h3>商品评价</h3></div>
    <c:forEach var="po" items="${list}" varStatus="i">
    <div class="mt">
        <div class="comment-item" data-guid="c8d19254-49a4-46f6-8a09-8e3695f50c20" data-top="">
            <div class="user-column">
                <div class="user-info"><img src="//misc.360buyimg.com/user/myjd-2015/css/i/peisong.jpg" alt="jd_933397364"
                                            class="avatar" width="25" height="25">${po.userName}
                </div>
                <div class="user-level"><span style="color: rgb(136, 136, 136);"></span></div>
            </div>
            <div class="comment-column J-comment-column">
                <div class="comment-star star5"></div>
                <p class="comment-con" style="margin-left: 200px;">${po.innerRemark}
                    </p>
            </div>
        </div>
    </div>
    </c:forEach>
</div>
<div id="J_footer" class="footer">
    <div class="mod_service" clstag="h|keycount|btm|btmnavi_null01">
        <div class="grid_c1 mod_service_inner">
            <ul class="mod_service_list">
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_duo">多</h5>
                        <p class="mod_service_txt">品类齐全，轻松购物</p></div>
                </li>
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_kuai">快</h5>
                        <p class="mod_service_txt">多仓直发，极速配送</p></div>
                </li>
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_hao">好</h5>
                        <p class="mod_service_txt">正品行货，精致服务</p></div>
                </li>
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_sheng">省</h5>
                        <p class="mod_service_txt">天天低价，畅选无忧</p></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="mod_copyright">
        <div class="grid_c1 mod_copyright_inner"><p class="mod_copyright_links" clstag="h|keycount|btm|btmnavi_null03">
            <p class="mod_copyright_auth" clstag="h|keycount|btm|btmnavi_null07"><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_2"
                    href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&amp;ampct=df&amp;amppa=294005"
                    target="_blank" rel="noopener noreferrer">可信网站信用评估</a><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_3" href="http://www.cyberpolice.cn"
                    target="_blank" rel="noopener noreferrer">网络警察提醒你</a><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_4"
                    href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank"
                    rel="noopener noreferrer">诚信网站</a><a class="mod_copyright_auth_ico mod_copyright_auth_ico_5"
                                                         href="http://www.12377.cn/" target="_blank"
                                                         rel="noopener noreferrer">中国互联网举报中心</a><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_6" href="http://www.12377.cn/node_548446.htm"
                    target="_blank" rel="noopener noreferrer">网络举报APP下载</a></p></div>
    </div>
</div>
<script>
    function addBuyCar() {
        var goodsId = $("#goodsId").val();
        var userId = $("#userId").val();
        var num = $("#buy-num").val();
        if (userId == 0) {
            window.location.href = "/pages/before/login.jsp"
        } else {
            window.location.href = "/before/addBuyCar?goodsId=" + goodsId + "&userId=" + userId + "&num=" + num;
        }
    }
</script>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/runtime.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/index.chunk.js"></script>
</body>
</html>

