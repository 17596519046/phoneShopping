<%@ page import="com.rich.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script language="JavaScript" type="text/javascript">
    if (window != top)
        top.location.href = location.href;
</script>
<html class="ks-gecko74 ks-gecko ks-firefox74 ks-firefox" data-spm-anchor-id="875.7931836/B.0.i0.685242659OoMX0">
<head>
    <script src="//g.alicdn.com/mtb/lib-mtop/2.4.5/mtop.js" async=""></script>
    <script charset="utf-8"
            src="https://fragment.tmall.com/tmbase/sn_seller_support?wh_callback=true&amp;_ksTS=1585346808236_381&amp;callback=sn_seller_support"
            async=""></script>
    <script charset="utf-8"
            src="https://fragment.tmall.com/tmbase/sn_sitemap?wh_callback=true&amp;_ksTS=1585346808203_368&amp;callback=sn_sitemap"
            async=""></script>
    <script src="https://ecpm.tanx.com/ex?i=mm_12852562_1778064_37802118&amp;cb=jsonp_callback_35426&amp;callback=&amp;userid=&amp;o=&amp;f=&amp;n=&amp;r=http%3A%2F%2Fs.click.taobao.com%2Ft%3Fe%3Dm%253D2%2526s%253Drx3Awx5d3xccQipKwQzePCperVdZeJvipRe%252F8jaAHciLme4nz7IQD3UeRakndigwDQeYUxvbYNX7%252Bk46yyCXGms78VMtZKGCSLJ3jTfdB2Zyw1d79dBRbM7ngtD9XDUvvoet87lGTGGIGrHgCgZNHKist33dC4JQxg5p7bh%252BFbQ%253D%26union_lens%3DlensId%253A0b0bad7d_0cce_16d38f83a6f_524b%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;cg=a7abd985424e773ff89b70efca4a5896&amp;pvid=ad7b6bc78ac2b0a989acee81772d8451&amp;u=https%3A%2F%2Fwww.tmall.com%2F%3Fali_trackid%3D2%3Amm_26632258_3504122_48284354%3A1585346785_196_1288082213%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;psl=1&amp;nk=&amp;sk=&amp;refpid="
            async=""></script>
    <script src="//p.tanx.com/ex?i=mm_12852562_1778064_37802118" async=""></script>
    <script src="https://ecpm.tanx.com/ex?i=mm_12852562_1778064_37676870&amp;cb=jsonp_callback_67114&amp;callback=&amp;userid=&amp;o=&amp;f=&amp;n=&amp;r=http%3A%2F%2Fs.click.taobao.com%2Ft%3Fe%3Dm%253D2%2526s%253Drx3Awx5d3xccQipKwQzePCperVdZeJvipRe%252F8jaAHciLme4nz7IQD3UeRakndigwDQeYUxvbYNX7%252Bk46yyCXGms78VMtZKGCSLJ3jTfdB2Zyw1d79dBRbM7ngtD9XDUvvoet87lGTGGIGrHgCgZNHKist33dC4JQxg5p7bh%252BFbQ%253D%26union_lens%3DlensId%253A0b0bad7d_0cce_16d38f83a6f_524b%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;cg=db597ca195ec4a8f84d53f4ffc539adb&amp;pvid=ad7b6bc78ac2b0a989acee81772d8451&amp;u=https%3A%2F%2Fwww.tmall.com%2F%3Fali_trackid%3D2%3Amm_26632258_3504122_48284354%3A1585346785_196_1288082213%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;psl=1&amp;nk=&amp;sk=&amp;refpid="
            async=""></script>
    <script src="//p.tanx.com/ex?i=mm_12852562_1778064_37676870" async=""></script>
    <script charset="utf-8"
            src="https://fragment.tmall.com/tmbase/global_footer_ensure?wh_callback=true&amp;_ksTS=1585346803983_350&amp;callback=global_footer_ensure"
            async=""></script>
    <script charset="utf-8"
            src="https://fragment.tmall.com/tmbase/mui_footer_desc?wh_callback=true&amp;_ksTS=1585346803978_337&amp;callback=mui_footer_desc"
            async=""></script>
    <script charset="utf-8"
            src="https://fragment.tmall.com/tmbase/mui_footer_link?wh_callback=true&amp;_ksTS=1585346803972_324&amp;callback=mui_footer_link"
            async=""></script>
    <script src="https://ecpm.tanx.com/ex?i=mm_12852562_1778064_37796997&amp;cb=jsonp_callback_61825&amp;callback=&amp;userid=&amp;o=&amp;f=&amp;n=&amp;r=http%3A%2F%2Fs.click.taobao.com%2Ft%3Fe%3Dm%253D2%2526s%253Drx3Awx5d3xccQipKwQzePCperVdZeJvipRe%252F8jaAHciLme4nz7IQD3UeRakndigwDQeYUxvbYNX7%252Bk46yyCXGms78VMtZKGCSLJ3jTfdB2Zyw1d79dBRbM7ngtD9XDUvvoet87lGTGGIGrHgCgZNHKist33dC4JQxg5p7bh%252BFbQ%253D%26union_lens%3DlensId%253A0b0bad7d_0cce_16d38f83a6f_524b%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;cg=af34b4e3f7a7a145282b7bc3dd567494&amp;pvid=ad7b6bc78ac2b0a989acee81772d8451&amp;u=https%3A%2F%2Fwww.tmall.com%2F%3Fali_trackid%3D2%3Amm_26632258_3504122_48284354%3A1585346785_196_1288082213%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;psl=1&amp;nk=&amp;sk=&amp;refpid="
            async=""></script>
    <script src="//p.tanx.com/ex?i=mm_12852562_1778064_37796997" async=""></script>
    <script src="https://ecpm.tanx.com/ex?i=mm_12852562_1778064_37804005&amp;cb=jsonp_callback_73453&amp;callback=&amp;userid=&amp;o=&amp;f=&amp;n=&amp;r=http%3A%2F%2Fs.click.taobao.com%2Ft%3Fe%3Dm%253D2%2526s%253Drx3Awx5d3xccQipKwQzePCperVdZeJvipRe%252F8jaAHciLme4nz7IQD3UeRakndigwDQeYUxvbYNX7%252Bk46yyCXGms78VMtZKGCSLJ3jTfdB2Zyw1d79dBRbM7ngtD9XDUvvoet87lGTGGIGrHgCgZNHKist33dC4JQxg5p7bh%252BFbQ%253D%26union_lens%3DlensId%253A0b0bad7d_0cce_16d38f83a6f_524b%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;cg=e455b8df17bb83b0241b078679aaebf8&amp;pvid=ad7b6bc78ac2b0a989acee81772d8451&amp;u=https%3A%2F%2Fwww.tmall.com%2F%3Fali_trackid%3D2%3Amm_26632258_3504122_48284354%3A1585346785_196_1288082213%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;psl=1&amp;nk=&amp;sk=&amp;refpid="
            async=""></script>
    <script src="//p.tanx.com/ex?i=mm_12852562_1778064_37804005" async=""></script>
    <script src="https://ecpm.tanx.com/ex?i=mm_12852562_1778064_37676859&amp;cb=jsonp_callback_77215&amp;callback=&amp;userid=&amp;o=&amp;f=&amp;n=&amp;r=http%3A%2F%2Fs.click.taobao.com%2Ft%3Fe%3Dm%253D2%2526s%253Drx3Awx5d3xccQipKwQzePCperVdZeJvipRe%252F8jaAHciLme4nz7IQD3UeRakndigwDQeYUxvbYNX7%252Bk46yyCXGms78VMtZKGCSLJ3jTfdB2Zyw1d79dBRbM7ngtD9XDUvvoet87lGTGGIGrHgCgZNHKist33dC4JQxg5p7bh%252BFbQ%253D%26union_lens%3DlensId%253A0b0bad7d_0cce_16d38f83a6f_524b%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;cg=a29ec72780b48faa77a00876f810bfde&amp;pvid=ad7b6bc78ac2b0a989acee81772d8451&amp;u=https%3A%2F%2Fwww.tmall.com%2F%3Fali_trackid%3D2%3Amm_26632258_3504122_48284354%3A1585346785_196_1288082213%26clk1%3Dcdc3b6e76512d869320253297ed2693d%26upsid%3Dcdc3b6e76512d869320253297ed2693d&amp;psl=1&amp;nk=&amp;sk=&amp;refpid="
            async=""></script>
    <script charset="utf-8" async="" src="https://atanx.alicdn.com/t/tanxssp.js?_v=12"></script>
    <script src="//p.tanx.com/ex?i=mm_12852562_1778064_37676859" async=""></script>
    <script charset="utf-8"
            src="https://pages.tmall.com/wow/list/act/search-act?_ksTS=1585346788034_301&amp;callback=Jsonp_fixed_searchbar_act"
            async=""></script>
    <script charset="utf-8" src="https://g.alicdn.com/mui/view-port-listen/3.0.1/??index.js" async=""></script>
    <script charset="utf-8"
            src="https://g.alicdn.com/zebra-pages/fp5/6.0.86/??pc/js/mods/new-hot-brand.js,pc/js/js-xtpl/new-hot-brand-render.js,pc/js/js-xtpl/new-hot-brand.js,pc/js/js-xtpl/new-hot-brand-item-render.js,pc/js/js-xtpl/new-hot-brand-item.js,pc/js/mods/fix-search.js,pc/js/mods/header.js"
            async=""></script>
    <script charset="utf-8"
            src="https://g.alicdn.com/zebra-pages/fp5/6.0.86/??pc/js/mods/tools/fp_lazy_module.js,pc/js/mods/v2_wonderful.js,pc/js/js-xtpl/wonderful-item-render.js,pc/js/js-xtpl/wonderful-item.js,pc/js/js-xtpl/v2_shop_item.js"
            async=""></script>
    <script charset="utf-8"
            src="https://g.alicdn.com/kissy/k/1.4.14/??combobox-min.js,component/control-min.js,component/manager-min.js,xtemplate/runtime-min.js,menu-min.js,component/container-min.js,component/extension/delegate-children-min.js,component/extension/content-render-min.js,component/extension/content-xtpl-min.js,component/extension/align-min.js,component/extension/shim-min.js"
            async=""></script>
    <script charset="utf-8"
            src="https://g.alicdn.com/mui/searchbar/3.3.30/??instance/default.js,base.js,plugin/spm.js,plugin/placeholder.js,plugin/hubaccess.js,template/act.js,template/shipShop.js,template/cat.js,template/list.js,template/shop.js,template/quickSearch.js,template/meetingPlace.js"
            async=""></script>
    <script type="text/javascript" async="" src="https://g.alicdn.com/alilog/oneplus/entry.js?t=220187"></script>
    <script charset="utf-8" src="https://g.alicdn.com/mui/category-menu/3.0.4/??index.js,count-down.js,triangle.js"
            async=""></script>
    <script charset="utf-8" src="https://g.alicdn.com/mui/brandbar/3.0.6/??brandbar.js" async=""></script>
    <script charset="utf-8"
            src="https://g.alicdn.com/zebra-pages/fp5/6.0.86/??pc/js/mods/category.js,pc/js/mods/datalazy.js,pc/js/js-xtpl/sub-pannel-render.js,pc/js/js-xtpl/sub-pannel.js,pc/js/mods/new-floor.js,pc/js/js-xtpl/new-floor-con-render.js,pc/js/js-xtpl/new-floor-con.js,pc/js/js-xtpl/lift-render.js,pc/js/js-xtpl/lift.js,pc/js/js-xtpl/new-floor-render.js,pc/js/js-xtpl/new-floor.js,pc/js/mods/lift.js,pc/js/mods/area.js,pc/js/js-xtpl/area-render.js,pc/js/js-xtpl/area.js,pc/js/mods/activity.js,pc/js/js-xtpl/activity-render.js,pc/js/js-xtpl/activity.js,pc/js/mods/cyclone.js,pc/js/js-xtpl/cyclone-render.js,pc/js/js-xtpl/cyclone.js,pc/js/mods/brand-activity.js,pc/js/js-xtpl/brand-activity-render.js,pc/js/js-xtpl/brand-activity.js,pc/js/mods/new-user-gift.js,pc/js/js-xtpl/new-user-gift-render.js,pc/js/js-xtpl/new-user-gift.js"
            async=""></script>
    <script charset="utf-8" src="https://g.alicdn.com/kissy/k/1.4.14/??node-min.js" async=""></script>
    <script charset="utf-8" src="https://g.alicdn.com/mui/slider/3.0.7/??index.js,base.js,slide-util.js,kissy2yui.js"
            async=""></script>
    <script charset="utf-8"
            src="https://suggest.taobao.com/sug?area=tmall-hq&amp;code=utf-8&amp;actId&amp;type&amp;src=mallfp..pc&amp;_ksTS=1585346786984_35&amp;callback=jsonp36"
            async=""></script>
    <script src="//top-tmm.taobao.com/login_api.do?0.6548358452915269" async=""></script>
    <script charset="utf-8" src="https://g.alicdn.com/kissy/k/1.4.14/??base-min.js,attribute-min.js" async=""></script>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="dns-prefetch" href="//g.alicdn.com">
    <link rel="dns-prefetch" href="//img.alicdn.com">
    <link rel="dns-prefetch" href="//gm.mmstat.com">
    <link rel="dns-prefetch" href="//ald.taobao.com">
    <link rel="dns-prefetch" href="//bar.tmall.com">
    <link href="//img.alicdn.com/tfs/TB1XlF3RpXXXXc6XXXXXXXXXXXX-16-16.png" rel="shortcut icon" type="image/x-icon">
    <link title="天猫Tmall.com" href="//g.alicdn.com/mui/global/1.2.35/file/search.xml"
          type="application/opensearchdescription+xml" rel="search">
    <meta name="spm-id" content="875.7931836/B">

    <title>天猫tmall.com--理想生活上天猫</title>
    <base>
    <link rel="stylesheet" href="//g.alicdn.com/??mui/global/3.0.31/global.css,zebra-pages/fp5/6.0.86/pc/css/index.css">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="date=no">
    <meta name="format-detection" content="address=no">
    <meta name="keywords" content="商城,网上购物,网购,进口食品,美容护理,母婴玩具,家用电器,手机数码,家居生活,服饰内衣,营养保健,钟表珠宝,饰品箱包,汽车生活,图书音像,礼品卡">
    <meta name="description"
          content="天猫，中国线上购物的地标网站，亚洲超大的综合性购物平台，拥有10万多品牌商家。每日发布大量国内外商品！正品网购，上天猫！天猫千万大牌正品,品类全，一站购，支付安全，退换无忧！理想生活上天猫!">

    <meta property="og:title" content="天猫">
    <meta property="og:type" content="website">
    <meta property="og:url" content=" https://www.tmall.com/">
    <meta property="og:image" content=" https://img.alicdn.com/tfs/TB1MaLKRXXXXXaWXFXXXXXXXXXX-480-260.png">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script src="/js/jquery-3.3.1.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/supersized-init.js"></script>
    <!--[if IE 8]>
    <style>
        .wonderful-con .card-item .item-pic img {
            left: 0 !important;
            top: 0 !important;
        }

        .main-nav a .hover-pic {
            display: none;
        }

        .main-nav a:hover {
            background-color: #9A1B1B;
        }

        .banner-con a.small-banner0, a.small-banner1 {
            background-color: #fff;
        }
    </style>
    <![endif]-->
    <script>
        function searchInfo() {
            window.location.href = '/before/main'
        }
    </script>
</head>
<body class="w1230" style="">
<div id="mallPage" class="mui-global-biz-mallfp  ">


    <style>
        button {
            border-radius: 0;
        }
    </style>
    <!--from fragment-->
    <div id="site-nav" data-spm="a2226mz" role="navigation">
        <div id="sn-bg">
            <div class="sn-bg-right">
            </div>
        </div>
        <div id="sn-bd">
            <b class="sn-edge"></b>
            <div class="sn-container">
                <p id="login-info" class="sn-login-info"><em>嗨，欢迎来到脑桥商城</em>
                    <c:choose>
                        <c:when test="${user.loginName eq null}">
                            <a class="sn-login" href="/pages/before/login.jsp"

                               target="_top">请登录</a>
                            <a class="sn-register"
                               href="/pages/before/register.jsp"
                               target="_top">免费注册</a>
                        </c:when>
                        <c:otherwise>
                            <a href="/pages/before/mySelfInfo.jsp" class="sn-login">${user.loginName}</a>
                            &nbsp;&nbsp;
                            &nbsp;&nbsp; <a href="/pages/before/myselfAddress.jsp" class="sn-login">收货地址</a>
                        </c:otherwise>
                    </c:choose>
                </p>
                <ul class="sn-quick-menu">
                    <c:choose>
                        <c:when test="${user.loginName eq null}">
                        </c:when>
                        <c:otherwise>
                            <li class="sn-mytaobao menu-item j_MyTaobao">
                                <div class="sn-menu">
                                    <a class="menu-hd" href="/before/selectMySelfOrderInfo?userId=${user.id}"
                                       target="_top" rel="nofollow"
                                       tabindex="0" aria-haspopup="true" aria-expanded="false">我的订单<b></b></a>
                                </div>
                            </li>
                            <li class="sn-cart">
                                <i class="mui-global-iconfont">󰅈</i>
                                <a class="sn-cart-link" href="/before/selectMySelfBuyCarInfo?userId=${user.id}"
                                   target="_top"
                                   rel="nofollow">购物车
                                </a>
                                &nbsp;&nbsp; <a href="/before/loginOut" class="link-login">注销</a>
                            </li>
                            <li class="sn-separator"></li>
                        </c:otherwise>
                    </c:choose>
                    <li class="sn-sitemap">
                        <div class="sn-menu">
                            <h3 class="menu-hd"><i class="mui-global-iconfont"></i><span>手机分类</span><b></b></h3>
                            <div style="width: 400%" class="menu-bd sn-sitemap-lazy sn-sitemap-bd" data-spm="a2228l4">
                                <style>
                                    #site-nav .site-cont {
                                        height: 110px;
                                    }

                                    #site-nav .site-hot {
                                        width: 455px;
                                    }

                                    #site-nav .site-market {
                                        width: 455px;
                                    }

                                    .w1190 #site-nav .site-hot {
                                        width: 455px;
                                    }

                                    .w1190 #site-nav .site-market {
                                        width: 455px;
                                    }
                                </style>
                                <div class="site-cont site-help">
                                    <ul class="site-list">
                                        <c:forEach var="vo" items="${typeList}" varStatus="i">
                                        <li>
                                                <a id="productType" style="cursor: pointer";  href="/before/main?typeId=${vo.typeId}&name=${name}">${vo.productType}</a>

                                        </li>
                                        </c:forEach>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <div id="header" data-spm="a2226n0" data-spm-anchor-id="875.7931836/B.0.a2226n0.685242659OoMX0">
        <div class="headerLayout">
            <div class="headerCon">
                <h1 id="mallLogo">
                    <span class="mlogo">

                     <a href="//www.tmall.com/" title="天猫Tmall.com"><s></s>天猫Tmall.com</a>

                    </span>

                </h1>
                <div class="header-extra" data-spm-anchor-id="875.7931836/B.a2226n0.i1.685242659OoMX0">

                    <div class="header-banner" data-spm-anchor-id="875.7931836/B.a2226n0.i0.685242659OoMX0">


                        <div></div>

                    </div>


                    <div id="mallSearch" class="mall-search">
                        <form name="searchTop" action=""
                              class="mallSearch-form clearfix" target="_top">
                            <fieldset>
                                <legend></legend>
                                <div class="mallSearch-input clearfix">
                                    <label for="mq" style="visibility: visible; display: none;"></label>
                                    <div class="s-combobox" id="">
                                        <div class="s-combobox-input-wrap">
                                            <input type="text" name="productName" autocomplete="off"
                                                   value="${name}"
                                                   id="mq"
                                                   title="请输入搜索文字" aria-label="请输入搜索文字">
                                        </div>

                                        <label for="mq" class="s-combobox-placeholder"
                                               style="color: rgb(102, 102, 102); visibility: visible;"></label></div>
                                    <button type="button " onclick="searchInfo()">搜索<s></s></button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="content">
        <style>

            .banner-con:before {
                background: url() right center no-repeat;
            }

            .banner-con:after {
                background: url() left center no-repeat;
            }

            .activity-bg {
                background-image: url();
            }
        </style>
        <div class="j_category category-con">
            <div class="category-inner-con j_categoryInnerCon j_categoryTab">
                <div class="j_logo  logo-con" data-spm="2015002" style="margin-top: -11%">
                    <img class="tmall-logo-img" src="/img/image/logo.jpg"
                         style="margin: 1px auto;;" width="240px" height="130px">
                </div>
            </div>

            <div class="banner-con j_mainBanner loading" data-spm="2016006">
                <div class="slider-decoration left"></div>
                <div class="slider-decoration right"></div>

                <div class="banner-slider j_bannerSlider">
                    <div class="slider-content loading">


                        <div class="main-banner slider-pannel"
                             style="background-color: rgb(234, 235, 239); position: absolute; z-index: 0; opacity: 0; display: none;">

                            <div class="normal main-banner-outcon">
                                <!--加两个容器是为了定位，给左边的导航留出位置，否则背景无法平铺，第二个容器无法使用margin居中-->
                                <div class="main-banner-con">
                                    <div class="main-banner-con2" style="background-color:#eaebef;">
                                        <a tabindex="-1" class="  j_needGoldExposure " data-exposure=""
                                           data-gold-exposure="" data-spm="d1"
                                           >
                                            <b class="j_bigBanner big-banner " data-src=""
                                               style="background: url(https://img.alicdn.com/imgextra/i1/2528254892/O1CN010abwBX1m0a92ScYBV_!!2528254892.jpg_q100.jpg_.webp) no-repeat center center;"></b>
                                        </a>


                                        <a tabindex="-1" class="j_smallBanner small-banner0   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="https://img.alicdn.com/imgextra/i1/2528254892/O1CN01XI7jWC1m0a918cNwK_!!2528254892.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>

                                        <a tabindex="-1" class="j_smallBanner small-banner1   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="https://img.alicdn.com/imgextra/i1/2528254892/O1CN0150wmbJ1m0a90VmPAB_!!2528254892.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>


                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="main-banner slider-pannel j_tanxContainer" style="background-color: #8cdbea"
                             style="background: rgb(232, 232, 232) none repeat scroll 0% 0%; position: absolute; z-index: 1; opacity: 1; display: block;">
                            <a data-spm="d2"
                               >
                                <div class="tanx-banner-con">
                                    <img class="tanx-banner"
                                         src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585379512532&di=1e03c43f2ba00d4b57219779e2957d5d&imgtype=0&src=http%3A%2F%2Fpic43.nipic.com%2F20140630%2F1756183_104932000000_2.jpg">
                                </div>
                            </a>
                            <%--<img class="ad-mark" src="//img.alicdn.com/tfs/TB1c_LDLXXXXXXoXpXXXXXXXXXX-24-14.png">--%>


                        </div>


                        <div class="main-banner slider-pannel"
                             style="position: absolute; z-index: 0; opacity: 0; display: none;">

                            <div class="normal main-banner-outcon">
                                <!--加两个容器是为了定位，给左边的导航留出位置，否则背景无法平铺，第二个容器无法使用margin居中-->
                                <div class="main-banner-con">
                                    <div class="main-banner-con2" style="background-color:'#e5e5e5';">
                                        <a tabindex="-1" class=" j_needExposure   j_needGoldExposure " data-exposure=""
                                           data-gold-exposure="" data-spm="d3"

                                            <b class="j_bigBanner big-banner "
                                               data-src="https://img.alicdn.com/tps/i4/TB1I8ZDxeL2gK0jSZFmSuw7iXXa.jpg"
                                               style="background: rgba(0, 0, 0, 0) url(&quot;https://img.alicdn.com/tps/i4/TB1I8ZDxeL2gK0jSZFmSuw7iXXa.jpg&quot;) no-repeat scroll center center;"></b>
                                        </a>


                                        <a tabindex="-1"
                                           class="j_smallBanner small-banner0  j_needExposure   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="//img.alicdn.com/imgextra/i1/71531/O1CN016OBDjb1NBExzohmOP_!!71531-2-lubanu.png_240x5000q100.jpg_.webp"
                                                 data-src="//img.alicdn.com/imgextra/i1/71531/O1CN016OBDjb1NBExzohmOP_!!71531-2-lubanu.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>

                                        <a tabindex="-1"
                                           class="j_smallBanner small-banner1  j_needExposure   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="//img.alicdn.com/imgextra/i4/1451645/O1CN01zxDToW1O1S7Qp8pab_!!1451645-2-lubanu.png_240x5000q100.jpg_.webp"
                                                 data-src="//img.alicdn.com/imgextra/i4/1451645/O1CN01zxDToW1O1S7Qp8pab_!!1451645-2-lubanu.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>


                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="main-banner slider-pannel j_tanxContainer"
                             style="background: rgb(232, 232, 232) none repeat scroll 0% 0%; position: absolute; z-index: 0; opacity: 0; display: none;">
                            <a data-spm="d4"
                               >
                                <div class="tanx-banner-con">
                                    <img class="tanx-banner"
                                         src="https://aecpm.alicdn.com/simba/img/TB1_JXrLVXXXXbZXVXXSutbFXXX.jpg">
                                </div>
                            </a>
                            <img class="ad-mark" src="//img.alicdn.com/tfs/TB1c_LDLXXXXXXoXpXXXXXXXXXX-24-14.png">


                        </div>


                        <div class="main-banner slider-pannel"
                             style="background-color: rgb(255, 255, 255); position: absolute; z-index: 0; opacity: 0; display: none;">

                            <div class="normal main-banner-outcon">
                                <!--加两个容器是为了定位，给左边的导航留出位置，否则背景无法平铺，第二个容器无法使用margin居中-->
                                <div class="main-banner-con">
                                    <div class="main-banner-con2" style="background-color:#ffffff;">
                                        <a tabindex="-1" class=" j_needExposure   j_needGoldExposure " data-exposure=""
                                           data-gold-exposure="" data-spm="d5"
                                           >
                                            <b class="j_bigBanner big-banner "
                                               data-src="//img.alicdn.com/imgextra/i1/110/O1CN01UVAjk31CgQ9o7bEcr_!!110-0-luban.jpg_q100.jpg_.webp"
                                               style="background: rgba(0, 0, 0, 0) url(&quot;//img.alicdn.com/imgextra/i1/110/O1CN01UVAjk31CgQ9o7bEcr_!!110-0-luban.jpg_q100.jpg_.webp&quot;) no-repeat scroll center center;"></b>
                                        </a>


                                        <a tabindex="-1"
                                           class="j_smallBanner small-banner0  j_needExposure   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="//img.alicdn.com/imgextra/i3/79/O1CN01jIC0nG1CSDsgWKZLb_!!79-2-luban.png_240x5000q100.jpg_.webp"
                                                 data-src="//img.alicdn.com/imgextra/i3/79/O1CN01jIC0nG1CSDsgWKZLb_!!79-2-luban.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>

                                        <a tabindex="-1"
                                           class="j_smallBanner small-banner1  j_needExposure   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="//img.alicdn.com/imgextra/i3/1153830/O1CN01TWkreS1eABWU5kshV_!!1153830-2-lubanu.png_240x5000q100.jpg_.webp"
                                                 data-src="//img.alicdn.com/imgextra/i3/1153830/O1CN01TWkreS1eABWU5kshV_!!1153830-2-lubanu.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>


                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="main-banner slider-pannel"
                             style="background-color: rgb(73, 151, 238); position: absolute; z-index: 0; opacity: 0; display: none;">

                            <div class="normal main-banner-outcon">
                                <!--加两个容器是为了定位，给左边的导航留出位置，否则背景无法平铺，第二个容器无法使用margin居中-->
                                <div class="main-banner-con">
                                    <div class="main-banner-con2" style="background-color:#4997ee;">
                                        <a tabindex="-1" class=" j_needExposure   j_needGoldExposure " data-exposure=""
                                           data-gold-exposure="" data-spm="d6"
                                           >
                                            <b class="j_bigBanner big-banner "
                                               data-src="//img.alicdn.com/imgextra/i1/92/O1CN012Ok4x51CYB1sYwe50_!!92-0-luban.jpg_q100.jpg_.webp"
                                               style="background: rgba(0, 0, 0, 0) url(&quot;//img.alicdn.com/imgextra/i1/92/O1CN012Ok4x51CYB1sYwe50_!!92-0-luban.jpg_q100.jpg_.webp&quot;) no-repeat scroll center center;"></b>
                                        </a>


                                        <a tabindex="-1"
                                           class="j_smallBanner small-banner0  j_needExposure   j_needGoldExposure "

                                           data-exposure="" data-gold-exposure="">
                                            <img alt=""
                                                 src="//img.alicdn.com/imgextra/i4/147/O1CN015L12vZ1CxMoI5aBjN_!!147-2-luban.png_240x5000q100.jpg_.webp"
                                                 data-src="//img.alicdn.com/imgextra/i4/147/O1CN015L12vZ1CxMoI5aBjN_!!147-2-luban.png_240x5000q100.jpg_.webp"
                                                 width="100%">
                                        </a>


                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <%--<div class="slider-nav">--%>

                    <%--<li class=""></li>--%>

                    <%--<li class="selected"></li>--%>

                    <%--<li class=""></li>--%>

                    <%--<li class=""></li>--%>

                    <%--<li class=""></li>--%>

                    <%--<li class=""></li>--%>

                    <%--</div>--%>
                    <!--<div class="vip-outcon">-->
                    <!--<div class="j_vipCon vip-con">-->
                    <!--</div>-->
                    <!--</div>-->
                </div>


            </div>
        </div>
        <div class="j_wonderful wonderful-con" style="width: 1330px;padding-left: 60px" id="J_FloorCNXH">
            <h2 class="wonderful-title">
        <span class="text-ctn">
            <i class="fp-iconfont nav-item-icon icon"></i>猜你喜欢
        </span>
            </h2>
            <div class="module-content j_wonderfulList">
                <div data-spm="20161011">


                    <ul class="wonderful-line  j_exposureExtra1 ">

                        <c:forEach var="po" items="${list}" varStatus="i">
                            <form id="${po.id}goodsForm" action="/before/goodsDetail" target="_top" method="post">
                                <input name="productName" value="${po.productName}" type="hidden">
                                <input name="productImg" value="${po.productImg}" type="hidden">
                                <input name="productDetail" value="${po.productDetail}" type="hidden">
                                <input name="productPrice" value="${po.productPrice}" type="hidden">
                                <input name="id" value="${po.id}" type="hidden">
                                <input name="productNum" value="${po.productNum}" type="hidden">
                                <li class="wonderful-item " onclick="submit('${po.id}')">
                                    <a class="card-item  "
                                       href="#">
            <span class="item-pic">
            <img src="${po.productImg}"
                 width="100%">
                </span>
                                        <span class="item-info">
                    <span class="item-desc">
                        <em class="item-name" title="1LINING李宁正品 新款男子开衫无帽卫衣外套 运动服AWDM093-1-4">${po.productName}</em>
                    </span>
                    <span class="item-detail">
                        <span class="item-price">



<span class="mui-price  ">
    <i class="mui-price-rmb">¥</i>
    <span class="mui-price-integer">${po.productPrice}</span>

    <span class="mui-price-decimal">.0</span>

</span>

</span>

                    </span>
                </span>
                                    </a>
                                </li>
                            </form>
                            <script>
                                function submit(s) {
                                    var name = s + "goodsForm";
                                    $("#" + name).submit();
                                }
                            </script>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div id="footer" data-spm="a2226n1" style="display: block;min-height: 0px">
        <div id="tmall-ensure">

            <div class="mui-global-fragment-load" data-fragment="tmbase/global_footer_ensure"><a
                   ></a>
                <a ></a>
                <a ></a>
                <a ></a></div>

        </div>
    </div>
</div>
</body>
</html>





