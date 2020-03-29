<%@ page import="java.math.BigDecimal" %>
<%@ page import="com.rich.pojo.SystemUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <link type="text/css" rel="stylesheet"
          href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/5.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/5.0.0/nav.css,shoppingcart/5.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css"/>
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/1.0.0/unit/base/5.0.0/base.js"></script>
    <link source="widget" href="//misc.360buyimg.com/user/cart/??/widget/no-login/no-login.css" rel="stylesheet"
          type="text/css">
    <link type="text/css" rel="stylesheet"
          href="//misc.360buyimg.com/user/cart/widget/??common/common.css,header-2017/header-2017.css,cart-sidebar/cart-sidebar.css,cart-sidebar-follow/cart-sidebar-follow.css,cart-filter-bar/cart-filter-bar.css,cart-similar/cart-similar.css,cart-gift/cart-gift.css,order-combined/order-combined.css,unmarket/unmarket.css,cart-inner-new/cart-inner-new.css,cart-toolbar-new/cart-toolbar-new.css,cart-removed/cart-removed.css,cart-full/cart-full.css,cart-smart/cart-smart.css,cart-tabs-new/cart-tabs-new.css,p-detect/p-detect.css,backpanel/backpanel.css,order-cross/order-cross.css"
          source="widget"/>


</head>
<%
    SystemUser user= (SystemUser) request.getSession().getAttribute("user");
    int userId = 0;
    if(null != user){
        userId = user.getId();
    }
%>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/first-screen.chunk.css" rel="stylesheet"/>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/index.chunk.css" rel="stylesheet"/>
<script>
    function search() {
        var key = $("#key").val();
        window.location.href = '/before/main?name='+key;
    }
    function mySelf() {
        var userId = $("#userId").val();
        if(userId == 0){
            window.location.href = "/pages/before/login.jsp";
        }else{
            window.location.href = "/before/selectMySelfBuyCarInfo?userId="+userId
        }
    }
    function myselfOrder() {
        var userId = $("#userId").val();
        if(userId == 0){
            window.location.href = "/pages/before/login.jsp";
        }else{
            window.location.href = "/before/selectMySelfOrderInfo?userId="+userId
        }
    }
    function loginOut() {
        $.post('/before/loginOut',{},function () {
            window.location.href = "/before/main";
        })
    }
    function clickArea(area) {
        var key = $("#key").val();
        window.location.href = "/before/main?name="+key+"&area="+area;
    }
</script>
<body>
<input id="userId" type="hidden" value="<%=userId%>">
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
                                                                   aria-haspopup="true" aria-label="地区" role="button">
                <%--<i--%>
                    <%--class="iconfont iconfont-location"></i>--%>
                <span class="ui-areamini-text" data-id="7"
                                                                  title="河南">${area}</span></a>
                <div class="dd dropdown-layer" tabindex="-1" area-labelledby="areamini" role="menu">
                    <div class="dd-spacer"></div>
                    <div class="ui-areamini-content-wrap" style="left: auto;">
                        <div class="ui-areamini-content">
                            <div class="ui-areamini-content-list">
                                <c:forEach var="vo" items="${areaList}" varStatus="i">
                                    <div class="item"><a data-id="1" href="javascript:void(0)" role="menuitem"
                                                         onclick="clickArea('${vo.area}')"    class="${vo.area eq area ?'selected':''}"    tabindex="-1">${vo.area}</a></div>
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
                <c:choose>
                    <c:when test="${user.userName eq null}">
                    </c:when>
                    <c:otherwise>
                        &nbsp;&nbsp; <a href="" onclick="loginOut()"  class="link-login">注销</a>
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
            </div>
        </div>

        <div id="hotwords" clstag="h|keycount|head|search_d" role=""></div>
    </div>
</div>
<div class="cart-filter-bar">
    <ul class="switch-cart">
        <li class="switch-cart-item curr">
                <em style="color: black">收获地址:</em>
                <em style="color: black">${address.province}
                    ${address.city}
                    ${address.area}
                    ${address.detailsAddress}
                </em>
                <em style="color: black;margin-left: 20px">手机号:</em>
                <em style="color: black;">${address.receivePhone}</em>
                <%--<span class="number">1</span>--%>
        </li>
    </ul>
    <div class="clr"></div>

    <div class="tab-con ui-switchable-panel-selected" style="display: block;"></div>
    <div class="tab-con hide" style="display: none;"></div>
</div>
<div class="cart-filter-bar">
    <ul class="switch-cart">
        <li class="switch-cart-item curr">
            <a href="#">
                <em>全部商品</em>
                <%--<span class="number">1</span>--%>
            </a>
        </li>
    </ul>
    <div class="clr"></div>
    <div class="w-line">
        <div class="floater" style="width: 79px; left: 0px;"></div>
    </div>
    <div class="tab-con ui-switchable-panel-selected" style="display: block;"></div>
    <div class="tab-con hide" style="display: none;"></div>
</div>
<div id="jd-cart">
    <div class="cart-main cart-main-new">
        <div class="cart-thead">
            <!-- 我的冰箱 -->
            <%--<div class="column t-checkbox">--%>
            <%--<div class="cart-checkbox">--%>
            <%--<input type="checkbox" id="toggle-checkboxes_up" name="toggle-checkboxes" class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_allCheck">--%>
            <%--<label class="checked" for="">勾选全部商品</label>--%>
            <%--</div>--%>
            <%--全选--%>
            <%--</div>--%>
            <div class="column t-goods">商品</div>
            <div class="column t-props"></div>
            <div class="column t-price">单价</div>
            <div class="column t-quantity">数量</div>
            <div class="column t-sum">小计</div>
            <div class="column t-action">操作</div>
        </div>
        <div id="cart-list"><input type="hidden" id="allSkuIds" value="57730305717">
            <input type="hidden" id="outSkus" value="">
            <input type="hidden" id="isLogin" value="1">
            <input type="hidden" id="isNoSearchStockState" value="0">
            <input type="hidden" id="isNoDD" value="0">
            <input type="hidden" id="isNoCoupon" value="0">
            <input type="hidden" id="isFavoriteDowngrade" value="0">
            <input type="hidden" id="isUnmarketDowngrade" value="0">
            <input type="hidden" id="isPriceNoticeDowngrade" value="0">
            <input type="hidden" id="isInstallmentDowngrade" value="0">
            <input type="hidden" id="headNoticeDg" value="0">
            <input type="hidden" id="isNoVenderFreight" value="0">
            <input type="hidden" id="isNoZyDelivery" value="0">
            <input type="hidden" id="isNoPopDelivery" value="0">
            <input type="hidden" id="isNoXzyf" value="0">
            <input type="hidden" id="isNoXzyfCd" value="0">
            <input type="hidden" id="isGiftServiceDowngrade" value="0">
            <input type="hidden" id="newUser" value="0">
            <input type="hidden" id="hiddenLocationId">
            <input type="hidden" id="hiddenLocation">
            <input type="hidden" id="ids" value="">
            <input type="hidden" id="isNgsdg" value="0">
            <input type="hidden" id="isCssdg" value="0">
            <input type="hidden" id="isCsudg" value="0">
            <input type="hidden" id="isRgdg" value="">
            <input type="hidden" id="isOpdg" value="0">
            <input type="hidden" id="isYydg" value="0">
            <input type="hidden" id="overseasLoc" value="0">
            <input type="hidden" id="isOadg" value="">
            <input type="hidden" id="isMdxxdg" value="0">
            <input type="hidden" id="isWmdg" value="0">
            <input type="hidden" id="isLdg" value="0">
            <input type="hidden" id="isPsydg" value="0">
            <input type="hidden" id="isSgdg" value="0">
            <input type="hidden" id="isqqgdg" value="">
            <input type="hidden" id="iscardg" value="">
            <input type="hidden" id="istoOrder" value="">
            <!-- 修改数量之前的值 -->
            <input type="hidden" id="changeBeforeValue" value="">
            <input type="hidden" id="changeBeforeId" value="">
            <input type="hidden" id="coord" value="121.62832,31.251">
            <input type="hidden" value="4" id="checkedCartState">
            <input type="hidden" value="0" id="overseaSelectedCount">
            <input type="hidden" value="0" id="noOverseaSelectedCount">
            <input type="hidden" value="692560" id="venderIds">
            <input type="hidden" value="" id="fictPopSkuIds">
            <input type="hidden" value="692560" id="fictVenderIds">
            <input type="hidden" value="" id="zySkuCid">
            <input type="hidden" value="57730305717_12113_1_1_false_692560_0" id="couponParam">
            <input type="hidden" value="" id="businessLinkSkuIds">
            <input type="hidden" value="692560" id="venderFreightIds">
            <input type="hidden" value="0" id="venderTotals">
            <input type="hidden" value="2" id="uclass">
            <input type="hidden" value="0.00" id="freshTotalPrice" autocomplete="off">
            <input type="hidden" value="0.00" id="notFreshTotalPrice" autocomplete="off">
            <input type="hidden" value="0.00" id="walmartTotalPrice" autocomplete="off">
            <input type="hidden" value="1583830623404" id="currentTime">
            <input type="hidden" value="false" id="isShowDepreNotice">
            <input type="hidden" value="0" id="isJcLo">
            <input type="hidden" value="-1" id="rlk">
            <input type="hidden" value="1" id="isSsdgHttp">
            <input type="hidden" value="30" id="limitOpdgThreshold">
            <!-- cartAsyc -->
            <input type="hidden" value="0" id="isOpAsyc">
            <input type="hidden" value="0" id="isJcAsyc">
            <input type="hidden" value="0" id="isVenderAsyc">
            <!-- 需要引用的全局信息 -->
            <div class="cart-item-list" id="cart-item-list-01">
                <div class="cart-tbody" id="vender_692560">
                    <%--<div class="shop">--%>
                    <%--<div class="cart-checkbox">--%>
                    <%--<input type="checkbox" name="checkShop" class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_checkOn_shop">--%>
                    <%--<label for="">勾选店铺内全部商品</label>--%>
                    <%--</div>--%>
                    <%--<span class="shop-txt">--%>
                    <%--<a class="shop-name" href="http://mall.jd.com/index-688677.html" target="_blank" id="venderId_692560" clstag="clickcart|keycount|xincart|cart_shopName" shopid="688677">安步官方旗舰店</a><a class="btn-im" _vid="692560" href="javascript:;" clstag="pageclick|keycount|cart__201503041|4">联系客服</a>--%>
                    <%--</span><span class="shop-coupon" name="J_vendershop_692560"><a class="shop-coupon-btn" id="coupon_692560" href="javascript:;" clstag="pageclick|keycount|201508251|7">优惠券</a></span>--%>
                    <%--<div class="shop-extra-r" id="shop-extra-r_692560" checkedskuids=""></div>--%>
                    <%--</div>--%>
                    <div class="item-list">
                        <!--单品-->
                        <!-- 单品-->
                        <!-- 京配 -->
                        <c:forEach var="po" items="${list}" varStatus="i">
                        <div class="item-single  item-item " product="1" id="product_57730305717" num="1" jdbx=""
                             skuid="57730305717" venderid="692560" zy="false" flashpurchase="false" oversea="false"
                             sid="1463" cid="12113" cm="" plus95discount="false" paralleldiscount="0.00"
                             balanceamount="" ts="1583830434211" pnc="false" pnct="" pncs="" pncn="" cancelplus="false"
                             dt="5" shopid="688677">
                            <div class="item-form">
                                <%--<div class="cell p-checkbox">--%>
                                <%--<div class="cart-checkbox">--%>
                                <%--<!--单品-->--%>
                                <%--<input p-type="57730305717_1" type="checkbox" name="checkItem" value="57730305717_1" data-bind="cbid" class="jdcheckbox" clstag="clickcart|keycount|xincart|cart_checkOn_sku">--%>
                                <%--<label for="">勾选商品</label>--%>
                                <%--<span class="line-circle"></span>--%>
                                <%--</div>--%>
                                <%--</div>--%>
                                <div class="cell p-goods">
                                    <div class="goods-item">
                                        <div class="p-img">
                                            <a href="#"
                                               <%--target="_blank"--%>
                                               class="J_zyyhq_57730305717" pnc="false" pncs="">
                                                <img alt="" width="80"
                                                     clstag="clickcart|keycount|xincart|cart_sku_pic"
                                                     src="${po.img}">
                                            </a>
                                        </div>
                                        <div class="item-msg">
                                            <div class="p-name">
                                                <a clstag="clickcart|keycount|xincart|cart_sku_name"
                                                   href="#">
                                                    ${po.goodsName}
                                                </a>
                                            </div>
                                            <div class="p-extend p-extend-new">
                                                <span class="promise" _yanbao="yanbao_57730305717_"
                                                      _service="service_57730305717_" isproduct="1"
                                                      style="display:none"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="cell p-props p-props-new">--%>
                                <%--<div class="props-txt" title="筋膜枪">筋膜枪</div>--%>
                                <%--</div>--%>
                                <div class="cell p-price p-price-new
																								">
                                    <p class="plus-switch">
                                        <strong id="${po.id}money">${po.price}</strong>
                                    </p>
                                    <div>
                                        <div class="clr"></div>
                                    </div>
                                    <p class="mt5" jj="">
                                    </p>
                                    <p class="mt5" bt=""></p>
                                </div>
                                <div class="cell p-quantity">
                                    <!--单品-->
                                    <div class="quantity-form">
                                        <a onclick="subtract('${po.id}')"
                                           class="decrement disabled">-</a>
                                        <input autocomplete="off" type="text" class="itxt" value="${po.num}"
                                               id="${po.id}number" minnum="1">
                                        <a  onclick="add('${po.id}')"
                                           class="increment">+</a>
                                        <script>
                                            function subtract(id) {
                                                var count = id+"number"
                                                var number = $("#"+count).val();
                                                var num = 1;
                                                if(number > 1){
                                                    num = number - 1;
                                                    $("#"+count).val(num);
                                                    var price = $("#"+id+"prices").html();
                                                    var mon = $("#"+id+"money").html();
                                                    var counts = parseFloat(parseFloat(price) - parseFloat(mon)).toFixed(2);
                                                    $("#"+id+"prices").html(counts);
                                                    var account = $("#account").html();
                                                    var accounts = parseFloat(parseFloat(account) - parseFloat(mon)).toFixed(2);
                                                    $("#account").html(accounts);
                                                }
                                            }
                                            function add(id) {
                                                var count = id+"number"
                                                var number = $("#"+count).val();
                                                var num = parseInt(number) + parseInt(1);
                                                $("#"+count).val(num);
                                                var price = $("#"+id+"prices").html();
                                                var mon = $("#"+id+"money").html();
                                                var counts = parseFloat(parseFloat(price) + parseFloat(mon)).toFixed(2);
                                                $("#"+id+"prices").html(counts);
                                                var account = $("#account").html();
                                                var accounts = parseFloat(parseFloat(account) + parseFloat(mon)).toFixed(2);
                                                $("#account").html(accounts);
                                            }
                                        </script>
                                    </div>
                                    <%--<div class="ac ftx-03 quantity-txt" _stock="stock_57730305717">有货</div>--%>
                                </div>
                                <div class="cell p-sum">
                                    <strong id="${po.id}prices"><fmt:formatNumber type="number" value="${po.num*po.price}" pattern="0.00" maxFractionDigits="2"></fmt:formatNumber></strong>
                                </div>
                                <div class="cell p-ops">
                                    <!--单品-->
                                    <a id="remove_692560_57730305717_1" clstag="clickcart|keycount|xincart|cart_sku_del"
                                       data-name="安步（ANBU）轻羽筋膜枪按摩枪 蜜蜂静音大..." data-more="removed_299.00_1"
                                       class="cart-remove" href="/before/deleteBuyCar?id=${po.id}" ob="false">删除</a>
                                    <%--<a href="javascript:void(0);" class="cart-follow" id="follow_692560_57730305717_1" clstag="clickcart|keycount|xincart|cart_sku_guanzhu" ob="false">移到我的关注</a>--%>
                                </div>
                            </div>
                            <div class="item-extra mb10">


                                <div class="gift-items gift-items-new">
                                </div>
                                <!-- 落地配服务 -->
                            </div>
                            <div class="item-line"></div>
                        </div>
                        </c:forEach>
                        <div class="cart-smart-main" style="width: 1349px; height: 50px;">
                            <div class="toolbar-wrap">
                                <div class="selected-item-list hide" style="display: none;">
                                </div>
                                <div class="options-box">
                                    <div class="toolbar-right toolbar-right-new">
                                        <div class="normal">
                                            <div class="comm-right">
                                                <div class="btn-area">
                                                    <a onclick="settle('${address.id}')"
                                                       clstag="clickcart|keycount|xincart|cart_gotoOrder" class="submit-btn" data-bind="4">
                                                        去结算<b></b></a>
                                                </div>
                                                <div class="price-sum">
                                                    <div>
                                                        <span class="txt txt-new">总价：</span>
                                                        <span class="price sumPrice">
										<em id="account" data-bind="0.00">${price}</em>
									</span>
                                                        <b class="ml5 price-tips"></b>
                                                        <div class="price-tipsbox-new" style="display: none; left: 159.85px;">
                                                            <div class="ui-tips-main">不含运费及送装服务费</div>
                                                            <span class="price-tipsbox-arrow"></span>
                                                        </div>
                                                        <br>
                                                        <%--<div id="price-sum-extra-1" class="price-sum-extra"><span class="">促销：</span><span--%>
                                                                <%--class="">-¥0.00</span></div>--%>
                                                    </div>
                                                </div>
                                                <div class="amount-sum">
                                                    <%--已选择<em>0</em>件商品<b class="up" clstag="clickcart|keycount|xincart|cart_thumbnailOpen"></b>--%>
                                                </div>
                                                <div class="clr"></div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" id="isSsgdg" value=""></div>
    </div>
</div>

<div class="cart-smart-main"><h3 class="ac ftx-06"><b class="smart-head hl"></b><i class="smart-logo"></i>购物车帮你选<b
        class="smart-head hr"></b></h3>
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
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/runtime.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/index.chunk.js"></script>
</body>
<!--统计代码 -->
<script type="text/javascript">
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = '//wl.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();
    function settle(id) {
        if(id == ''){
            alert('请选择收货地址');
            return false
        }
        var price = $("#account").html();
        window.location.href = "/before/settle?price="+price+"&addressInfoId="+id;
    }
</script>
<script src="//gias.jd.com/js/td.js"></script>
<script src="//h5.360buyimg.com/ws_js/jdwebm.js?v=pcCart"></script>
<script language="JavaScript">
    try {
        var eid, fp;
        getJdEid(function (a, b, udfp) {
            eid = a;
            fp = b;
        });
        var shfp = getFingerPrint();
    } catch (e) {
    }
</script>
<!-- 公共头尾js end -->
</html>

