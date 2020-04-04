<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="ks-gecko74 ks-gecko ks-firefox74 ks-firefox">
<head>
    <meta charset="gbk">
    <meta name="data-spm" content="a2107">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description"
          content="淘宝网(Taobao.com)作为专业的购物网站拥有全球时尚前沿的消费者购物集市,100%认证网上商城及超值二手商品区，同时购物安全，产品丰富，应有尽有,任你选购,让你尽享网上在线购物乐趣！">
    <meta name="keywords"
          content="淘宝,掏宝,网上购物,C2C,在线交易,交易市场,网上交易,交易市场,网上买,网上卖，购物网站,团购,网上贸易,安全购物,电子商务,放心买,供应,买卖信息,网店,一口价,拍卖,网上开店,网络购物,打折,免费开店,网购,频道,店铺">





    <link type="text/css" href="//g.alicdn.com/sd/ncpc/nc.css?t=2020032807" rel="stylesheet" disabled="">


    <link rel="stylesheet" href="https://g.alicdn.com/vip/login/0.5.65/css/new-loginV2.css?t=20151220">
    <script type="text/javascript">
        var tbdw_frame_count = true;
    </script>
    <script src="https://g.alicdn.com/kissy/k/1.4.4/seed-min.js"></script>
    <link rel="stylesheet" href="https://g.alicdn.com/tm/login/3.0.10/login_pc.css">
    <script src="/js/jquery-3.3.1.js"></script>
    <script src="/js/jquery.min.js"></script>
    <style>
        @charset "utf-8";
    @font-face {
        font-family: 'nc_iconfont';
        src: url("//at.alicdn.com/t/font_1465353706_4784257.eot");
        src: url("//at.alicdn.com/t/font_1465353706_4784257.eot?#iefix") format('embedded-opentype'), url("//at.alicdn.com/t/font_1465353706_4784257.woff") format('woff'), url("//at.alicdn.com/t/font_1465353706_4784257.ttf") format('truetype'), url("//at.alicdn.com/t/font_1465353706_4784257.svg#iconfont") format('svg')
    }

    @font-face {
        font-family: 'ncpc_iconfont';
        src: url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot");
        src: url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot?#iefix") format('embedded-opentype'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.woff") format('woff'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.ttf") format('truetype'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.svg#ncpc_iconfont") format('svg')
    }

    .nc-container div#nc-loading-circle {
        background: transparent;
        width: 20px;
        height: 20px;
        display: inline-block;
        position: relative;
        vertical-align: middle
    }

    .nc-container div#nc-loading-circle .sk-circle {
        background: transparent;
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0
    }

    .nc-container #nc-loading-circle .sk-circle:before {
        content: '';
        display: block;
        margin: 0 auto;
        width: 15%;
        height: 15%;
        background-color: #818181;
        border-radius: 100%;
        -webkit-animation: sk-circleFadeDelay 1.2s infinite ease-in-out both;
        animation: sk-circleFadeDelay 1.2s infinite ease-in-out both
    }

    .nc-container #nc-loading-circle .sk-circle2 {
        -webkit-transform: rotate(30deg);
        -ms-transform: rotate(30deg);
        transform: rotate(30deg)
    }

    .nc-container #nc-loading-circle .sk-circle3 {
        -webkit-transform: rotate(60deg);
        -ms-transform: rotate(60deg);
        transform: rotate(60deg)
    }

    .nc-container #nc-loading-circle .sk-circle4 {
        -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        transform: rotate(90deg)
    }

    .nc-container #nc-loading-circle .sk-circle5 {
        -webkit-transform: rotate(120deg);
        -ms-transform: rotate(120deg);
        transform: rotate(120deg)
    }

    .nc-container #nc-loading-circle .sk-circle6 {
        -webkit-transform: rotate(150deg);
        -ms-transform: rotate(150deg);
        transform: rotate(150deg)
    }

    .nc-container #nc-loading-circle .sk-circle7 {
        -webkit-transform: rotate(180deg);
        -ms-transform: rotate(180deg);
        transform: rotate(180deg)
    }

    .nc-container #nc-loading-circle .sk-circle8 {
        -webkit-transform: rotate(210deg);
        -ms-transform: rotate(210deg);
        transform: rotate(210deg)
    }

    .nc-container #nc-loading-circle .sk-circle9 {
        -webkit-transform: rotate(240deg);
        -ms-transform: rotate(240deg);
        transform: rotate(240deg)
    }

    .nc-container #nc-loading-circle .sk-circle10 {
        -webkit-transform: rotate(270deg);
        -ms-transform: rotate(270deg);
        transform: rotate(270deg)
    }

    .nc-container #nc-loading-circle .sk-circle11 {
        -webkit-transform: rotate(300deg);
        -ms-transform: rotate(300deg);
        transform: rotate(300deg)
    }

    .nc-container #nc-loading-circle .sk-circle12 {
        -webkit-transform: rotate(330deg);
        -ms-transform: rotate(330deg);
        transform: rotate(330deg)
    }

    .nc-container #nc-loading-circle .sk-circle2:before {
        -webkit-animation-delay: -1.1s;
        animation-delay: -1.1s
    }

    .nc-container #nc-loading-circle .sk-circle3:before {
        -webkit-animation-delay: -1s;
        animation-delay: -1s
    }

    .nc-container #nc-loading-circle .sk-circle4:before {
        -webkit-animation-delay: -.9s;
        animation-delay: -.9s
    }

    .nc-container #nc-loading-circle .sk-circle5:before {
        -webkit-animation-delay: -.8s;
        animation-delay: -.8s
    }

    .nc-container #nc-loading-circle .sk-circle6:before {
        -webkit-animation-delay: -.7s;
        animation-delay: -.7s
    }

    .nc-container #nc-loading-circle .sk-circle7:before {
        -webkit-animation-delay: -.6s;
        animation-delay: -.6s
    }

    .nc-container #nc-loading-circle .sk-circle8:before {
        -webkit-animation-delay: -.5s;
        animation-delay: -.5s
    }

    .nc-container #nc-loading-circle .sk-circle9:before {
        -webkit-animation-delay: -.4s;
        animation-delay: -.4s
    }

    .nc-container #nc-loading-circle .sk-circle10:before {
        -webkit-animation-delay: -.3s;
        animation-delay: -.3s
    }

    .nc-container #nc-loading-circle .sk-circle11:before {
        -webkit-animation-delay: -.2s;
        animation-delay: -.2s
    }

    .nc-container #nc-loading-circle .sk-circle12:before {
        -webkit-animation-delay: -.1s;
        animation-delay: -.1s
    }

    @-webkit-keyframes sk-circleFadeDelay {
        0%, 39%, 100% {
            opacity: 0
        }
        40% {
            opacity: 1
        }
    }

    @-webkit-keyframes sk-circleFadeDelay {
        0%, 39%, 100% {
            opacity: 0
        }
        40% {
            opacity: 1
        }
    }

    @keyframes sk-circleFadeDelay {
        0%, 39%, 100% {
            opacity: 0
        }
        40% {
            opacity: 1
        }
    }

    .nc-container .scale_text2 #nc-loading-circle .sk-circle:before {
        background-color: #fff
    }

    .nc_iconfont {
        font-family: "nc_iconfont";
        color: #ff3f08;
        font-size: 16px;
        font-style: normal
    }

    .ncpc_iconfont {
        font-family: "ncpc_iconfont";
        color: #ff3f08;
        font-size: 16px;
        font-style: normal
    }

    .captcha-error .icon_ban {
        float: left;
        font-size: 16px;
        padding-right: 5px;
        line-height: 14px
    }

    .clickCaptcha_text .btn_refresh {
        font-style: normal;
        cursor: pointer;
        background: #fff;
        color: #737383
    }

    .imgCaptcha .btn_refresh {
        font-size: 20px;
        cursor: pointer;
        background: #fff;
        color: #737383
    }

    .nc_voice {
        display: none;
        position: relative;
        margin-top: -34px;
        z-index: 99;
        width: auto;
        height: 34px;
        background: #fff
    }

    .omeo-code-img, .omeo-code-audio {
        font-size: 0;
        text-align: left
    }

    .omeo-code-audiobox, .omeo-code-img a, .omeo-code-audio a, .omeo-code-state {
        display: inline-block;
        *display: inline;
        zoom: 1;
        height: 32px;
        vertical-align: top;
        font-size: 12px
    }

    .omeo-code .omeo-code-refresh {
        background: transparent;
        width: 32px;
        height: 32px;
        font-size: 20px;
        color: #888;
        text-align: center;
        text-decoration: none;
        padding-left: 4px;
        line-height: 32px
    }

    .omeo-code .omeo-switch {
        display: none;
        width: 32px;
        height: 32px;
        border-left: 1px solid #e1e1e1;
        background-image: url("//g.alicdn.com/sd/ncpc/images/checkcode.png");
        background-repeat: no-repeat
    }

    .omeo-img-active .omeo-code-img {
        display: block
    }

    .omeo-img-active .omeo-code-audio {
        display: none
    }

    .omeo-code-img img {
        border: 1px solid #cdcdcd;
        cursor: pointer
    }

    .omeo-code-img .omeo-switch {
        background-position: 9px -41px
    }

    .omeo-audio-active .omeo-code-audio {
        display: block
    }

    .omeo-audio-active .omeo-code-img {
        display: none
    }

    .omeo-code-refresh {
        position: relative;
        left: 95px
    }

    .omeo-code-audiobox {
        position: relative;
        height: 30px;
        line-height: 32px;
        border: 1px solid #e1e1e1;
        text-align: center;
        overflow: hidden;
        left: 100px;
        top: 1px;
        width: 45%;
        min-width: 80px;
        background-color: #eee
    }

    .omeo-code-audiobox a {
        display: block;
        text-decoration: none;
        color: #06c
    }

    .omeo-code-audiobox-playing a {
        visibility: hidden
    }

    .omeo-code-audiobox span, .omeo-code-audiobox b {
        visibility: hidden;
        position: absolute;
        top: 0;
        left: 0;
        height: 30px;
        font-weight: 100;
        overflow: hidden
    }

    .omeo-code-audiobox-playing span, .omeo-code-audiobox-playing b {
        visibility: visible
    }

    .omeo-code-audiobox span {
        z-index: 0;
        width: 0;
        background: #186bca
    }

    .omeo-code-audiobox b {
        width: 100%;
        z-index: 1;
        text-align: left;
        text-indent: 30px;
        color: #999;
        background: url("//g.alicdn.com/sd/ncpc/images/checkcode.png") no-repeat 14px -89px
    }

    .omeo-code-audio .omeo-switch {
        background-position: 5px 10px
    }

    input[type=text]::-ms-clear {
        display: none
    }

    .omeo-box {
        position: relative;
        background-color: #fff
    }

    .omeo-code-echo {
        position: absolute;
        top: 2px;
        left: 2px
    }

    .omeo-code-echo input {
        padding: 5px;
        height: 18px;
        line-height: 18px;
        border: 1px solid #ddd;
        width: 80px;
        outline: 0
    }

    .omeo-code-state {
        height: 30px;
        line-height: 30px;
        text-indent: 25px;
        white-space: nowrap;
        background-image: url("//g.alicdn.com/sd/ncpc/images/checkcode.png");
        background-repeat: no-repeat;
        background-position: 100px 100px
    }

    .omeo-code-echo .omeo-code-state-error {
        width: auto;
        background-position: 7px -193px
    }

    .omeo-code-echo .omeo-code-state-success {
        position: absolute;
        width: 30px;
        background-position: 7px -243px
    }

    .omeo-code-state {
        position: absolute;
        left: 0;
        top: 28px
    }

    .nc_voice_close {
        display: inline-block;
        position: relative;
        cursor: pointer;
        left: 95px;
        top: 0;
        border-left: #ddd 2px solid;
        padding: 0 0 0 7px;
        background-color: #fff;
        font-size: 20px;
        color: #888;
        line-height: 32px
    }

    .nc_help {
        position: absolute;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        z-index: 99999
    }

    .nc_help .mask {
        background-color: #000;
        opacity: .5;
        filter: alpha(opacity=50);
        width: 100%;
        height: 100%;
        top: 0;
        left: 0
    }

    .nc_btn_close {
        position: absolute;
        height: 20px;
        left: 500px;
        border-radius: 20px;
        padding: 10px 30px;
        background-color: #aaa;
        color: #fff;
        cursor: pointer;
        z-index: 10
    }

    .nc_btn_close:hover {
        background-color: #afafaf
    }

    .nc_hand {
        position: absolute;
        width: 68px;
        height: 53px;
        background-image: url("//g.alicdn.com/sd/ncpc/images/hand.png");
        z-index: 3
    }

    .nc_slide_bg {
        z-index: 3;
        font-size: 12px;
        text-align: center;
        color: #fff;
        line-height: 34px
    }

    .nc_voicebtn {
        position: absolute;
        padding: 0;
        right: -25px;
        font-size: 23px;
        color: #888;
        cursor: pointer;
        line-height: 34px
    }

    .nc_helpbtn {
        position: absolute;
        cursor: pointer;
        right: -95px;
        top: 4px;
        font-size: 12px;
        background-color: #ffb668;
        color: #fff;
        padding: 4px;
        border-radius: 2px;
        line-height: 18px;
        display: none
    }

    .nc_helpbtn:before {
        width: 0;
        height: 0;
        content: "";
        position: absolute;
        left: -2px;
        top: 6px;
        border-top: 4px solid transparent;
        border-bottom: 4px solid transparent;
        border-right: 4px solid #ffb668
    }

    .nc-container .errloading {
        border: #faf1d5 1px solid;
        text-indent: 3px;
        background-image: none;
        font-size: 12px;
        width: 290px;
        line-height: 20px;
        padding: 7px 5px 8px 5px;
        color: #ef9f06;
    }

    .nc-container .errloading a {
        color: #30a7fc
    }

    .nc_captcha_text .nc_err {
        float: left;
        text-indent: 0
    }

    .button_move {
        transition: left .5s;
        -moz-transition: left .5s;
        -webkit-transition: left .5s;
        -o-transition: left .5s
    }

    .bg_move {
        transition: width .5s;
        -moz-transition: width .5s;
        -webkit-transition: width .5s;
        -o-transition: width .5s
    }

    .nc_slide_box {
        position: absolute
    }

    .nc_captcha_text {
        height: auto;
        line-height: 20px;
        visibility: hidden;
        font-size: 12px;
        color: #999;
        font-weight: normal
    }

    .nc-container .nc_captcha_img_text {
        width: auto;
        height: auto;
        line-height: 20px;
        visibility: hidden;
        font-size: 12px;
        color: #999;
        font-weight: normal;
        display: none;
        padding: 0 0 10px 0;
        background-position: 0 0;
    }

    .nc-container .nc_captcha_img_text span.nc-lang-cnt {
        line-height: inherit
    }

    .nc-container .imgCaptcha .nc_captcha_img_text {
        width: auto
    }

    .nc_captcha_img_text {
        height: auto;
        line-height: 20px;
        visibility: hidden;
        font-size: 12px;
        color: #999;
        font-weight: normal;
        display: none;
        padding: 0 0 10px 3px;
        background-position: 0 0
    }

    .nc-container .nc_wrapper {
        width: auto
    }

    .nc_scale {
        width: auto;
        height: 34px;
        background: #e8e8e8;
        position: relative;
        margin: 0;
        padding: 0
    }

    .nc_scale.is_audio {
        margin-right: 25px
    }

    .nc-container .nc_scale div {
        height: auto
    }

    .nc-container .nc_scale ul {
        list-style: none
    }

    .nc-container .nc_scale .btn_slide {
        color: #737383;
        background-image: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale
    }

    .nc-container .nc_scale span {
        text-align: center;
        width: 40px;
        height: 32px;
        line-height: 32px;
        border: 1px solid #ccc;
        position: absolute;
        left: 0;
        cursor: move;
        background: #fff;
        z-index: 2
    }

    .nc-container .nc_scale span.nc-lang-cnt {
        *line-height: 34px;
        float: none;
        width: auto;
        height: auto;
        *height: 34px;
        border: none;
        position: static;
        cursor: inherit;
        background: none;
        z-index: 0;
        display: inline
    }

    .nc_slide_button {
        width: 40px;
        height: 32px;
        border: 1px solid #ccc;
        position: absolute;
        left: 0;
        cursor: move;
        background: #fff url("//g.alicdn.com/sd/ncpc/images/rt.png") no-repeat center;
        z-index: 2
    }

    @media screen and (-ms-high-contrast: active),(-ms-high-contrast: none) {
        .nc_scale span {
            height: 32px
        }
    }

    .nc-container .nc_scale .btnok {
        cursor: default;
        background: #fff url("//g.alicdn.com/sd/ncpc/images/yes.png") no-repeat center;
        z-index: 3
    }

    .nc-container .nc_scale .btnok2 {
        cursor: default;
        font-size: 20px;
        background: #fff url("//g.alicdn.com/sd/ncpc/images/no.png") no-repeat center;
        z-index: 3
    }

    .nc-container .nc_scale .btn_warn {
        cursor: default;
        color: #ff3f08;
        line-height: 34px;
        text-align: center;
        font-size: 20px;
        background: #fff;
        z-index: 3
    }

    .nc-container .clickCaptcha_text .btn_refresh {
        font-size: 20px
    }

    .nc-container .clickCaptcha_text .icon_close {
        line-height: 30px;
        margin-left: 8px;
        cursor: default;
        color: #ff3f08;
        font-size: 16px;
        float: left;
        margin-right: 2px;
        background: transparent;
        z-index: 3
    }

    .nc-container .nc_captcha_img_text .icon_close {
        cursor: default;
        color: #ff3f08;
        font-size: 16px;
        float: left;
        margin-right: 4px;
        background: transparent;
        z-index: 3;
        line-height: 18px
    }

    .nc-container .errloading .icon_warn {
        cursor: default;
        color: #ff3f08;
        font-size: 18px;
        float: left;
        background: transparent;
        z-index: 3
    }

    .nc-container .nc_scale .btn_ok {
        cursor: default;
        line-height: 34px;
        text-align: center;
        font-size: 20px;
        background: #fff;
        z-index: 3;
        color: #76c61d
    }

    .nc-container .nc_scale .nc_ok, .nc-container .nc_scale .nc_bg {
        background: #7ac23c
    }

    .nc-container .nc_scale .nc_bg {
        position: absolute;
        height: 100%;
        _height: 34px;
        left: 0;
        width: 10px
    }

    .nc-container .nc_scale div.redbar {
        background: #fc461e;
        opacity: .5;
        filter: alpha(opacity=50)
    }

    .nc-container .nc_scale div.orange {
        background: #f00
    }

    .nc-container .nc_scale .scale_text {
        width: 100%;
        height: 100%;
        text-align: center;
        position: absolute;
        z-index: 1;
        background: transparent;
        color: #9c9c9c;
        line-height: 34px;
        font-size: 12px;
        cursor: pointer
    }

    .nc-container .nc_scale .scale_text2 {
        text-align: left;
        color: #fff;
        font-size: 12px;
        text-indent: 10px
    }

    .nc-container .nc_scale .scale_text2 b {
        padding-left: 0;
        font-weight: normal
    }

    .nc-container .nc_scale .scale_text.scale_loading_text {
        text-align: center
    }

    .nc-container .nc_scale .imgCaptcha, .nc-container .nc_scale .clickCaptcha {
        display: none;
        overflow: hidden;
        border: 1px solid #ccc;
        background: #fff;
        z-index: 20000;
    }

    .nc-container .nc_scale .imgCaptcha p.error span, .nc-container .nc_scale .clickCaptcha p.error span {
        line-height: normal
    }

    .nc-container .nc_scale .imgCaptcha {
        height: auto
    }

    .nc-container .nc_scale .clickCaptcha {
        position: absolute;
        left: 0;
        top: 35px;
        height: 270px;
        background: #fff;
        display: none;
    }

    .nc-container .nc_scale .clickCaptcha p.error i {
        color: #ff3f08;
        font-style: normal
    }

    .nc-container .nc_scale .clickCaptcha div {
        position: static;
        clear: both;
        width: 100%;
        background: #fff;
        height: auto
    }

    .nc-container .nc_scale .clickCaptcha .clickCaptcha_text {
        height: 30px;
        line-height: 30px;
        font-size: 12px;
        color: #999;
    }

    .nc-container .nc_scale .clickCaptcha .clickCaptcha_text b {
        font-weight: normal
    }

    .nc_btn_2 {
        position: absolute;
        right: 0;
        top: 0;
        cursor: pointer;
        margin: 2px 9px 0 0
    }

    .nc_iconfont.nc_btn_2 {
        position: absolute;
        right: 0;
        top: 0;
        cursor: pointer
    }

    .nc_iconfont.nc_btn_1 {
        position: absolute;
        top: 10px;
        right: 5px
    }

    .nc_btn_1 {
        top: 10px;
        right: 10px
    }

    .scale_text i {
        font-style: normal;
        border: none;
        position: static;
        cursor: default;
        color: #fffc00;
        background: none;
        display: inline;
        width: 100%
    }

    .nc-container .clickCaptcha .clickCaptcha_img {
        margin: 0 auto;
        clear: both;
        position: relative;
    }

    .nc-container .clickCaptcha .clickCaptcha_img img {
        width: 230px;
        height: 230px;
        margin-left: 10px;
        margin-top: 5px
    }

    .nc-container .clickCaptcha .clickCaptcha_btn {
        margin: 10px 0 0 15px;
        position: relative;
        text-align: left;
    }

    .nc-container .clickCaptcha .clickCaptcha_btn img {
        cursor: pointer
    }

    .nc-container .imgCaptcha {
        position: absolute;
        left: 0;
        top: 35px;
        height: auto;
        padding-bottom: 15px;
        border: 1px solid #ccc;
        background: #fff;
    }

    .nc-container .imgCaptcha div {
        position: static;
        width: 90%;
        background-color: #fff
    }

    .nc-container .imgCaptcha, .nc-container .clickCaptcha {
        text-align: left;
    }

    .nc-container .imgCaptcha a, .nc-container .clickCaptcha a {
        color: #ff3f08
    }

    .nc-container .imgCaptcha .imgCaptcha_text {
        height: 42px;
        line-height: 42px;
        width: 120px;
        background: #fff;
        font-size: 14px;
        text-align: left;
        color: #747474;
        float: left;
        margin-left: 10px;
    }

    .nc-container .imgCaptcha .imgCaptcha_text input {
        margin-top: 5px;
        height: 30px;
        line-height: 30px;
        font-size: 14px;
        width: 90px;
        background: #fff
    }

    .nc-container .imgCaptcha .imgCaptcha_text input:focus {
        outline: none;
        color: #bbb
    }

    .nc-container .imgCaptcha .imgCaptcha_btn {
        margin: 0 0 0 12px;
        *margin-left: 0;
        clear: both;
        padding-top: 5px;
        width: 90%;
    }

    .nc-container .imgCaptcha .imgCaptcha_btn img {
        cursor: pointer
    }

    .nc-container .imgCaptcha .nc_scale_submit {
        margin: 0 auto;
        cursor: pointer;
        background-color: #fc461e;
        width: 120px;
        height: 32px;
        line-height: 32px;
        color: #fff;
        text-align: center
    }

    .nc-container .imgCaptcha .imgCaptcha_img {
        margin: 4px 0 0 100px;
        height: 40px;
        width: 130px;
        overflow: hidden;
        cursor: pointer;
    }

    .nc-container .imgCaptcha .imgCaptcha_img img {
        width: 130px
    }

    .nc-container .imgCaptcha .imgCaptcha_img input {
        border: solid 1px #ccc
    }

    .nc-lang-ar_MA, .nc-lang-ar_SA, .nc-lang-iw_HE, .nc-lang-iw_IL {
        text-align: right;
        *text-align: left;
    }

    .nc-lang-ar_MA .nc_scale .scale_text2, .nc-lang-ar_SA .nc_scale .scale_text2, .nc-lang-iw_HE .nc_scale .scale_text2, .nc-lang-iw_IL .nc_scale .scale_text2 {
        text-align: right;
    }

    .nc-lang-ar_MA .nc_scale .scale_text2 span, .nc-lang-ar_SA .nc_scale .scale_text2 span, .nc-lang-iw_HE .nc_scale .scale_text2 span, .nc-lang-iw_IL .nc_scale .scale_text2 span {
        *display: inline-block;
        padding: 0 56px 0 0
    }

    .nc-lang-ar_MA .nc_captcha_img_text, .nc-lang-ar_SA .nc_captcha_img_text, .nc-lang-iw_HE .nc_captcha_img_text, .nc-lang-iw_IL .nc_captcha_img_text {
        *text-align: right
    }

    .nc-lang-ar_MA span.nc-lang-cnt, .nc-lang-ar_SA span.nc-lang-cnt, .nc-lang-iw_HE span.nc-lang-cnt, .nc-lang-iw_IL span.nc-lang-cnt {
        text-align: right;
        direction: rtl
    }

    .nocaptcha span.nc-lang-cnt {
        float: none;
        height: auto;
        line-height: 30px
    }

    .nc-container {
        font-size: 12px;
        -ms-touch-action: none;
        touch-action: none;
    }

    .nc-container p {
        margin: 0;
        padding: 0;
        display: inline
    }

    .nc-container .scale_text.scale_text span[data-nc-lang="_startTEXT"] {
        display: inline-block;
        width: 100%
    }

    .nc-container .scale_text.scale_text.slidetounlock span[data-nc-lang="_startTEXT"] {
        background: -webkit-gradient(linear, left top, right top, color-stop(0, #4d4d4d), color-stop(.4, #4d4d4d), color-stop(.5, #fff), color-stop(.6, #4d4d4d), color-stop(1, #4d4d4d));
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        -webkit-animation: slidetounlock 3s infinite;
        -webkit-text-size-adjust: none
    }

    .nc-container .nc_scale .nc-align-center.scale_text2 {
        text-align: center;
        text-indent: -42px
    }

    @-webkit-keyframes slidetounlock {
        0% {
            background-position: -200px 0
        }
        100% {
            background-position: 200px 0
        }
    }

    .nc-container.tb-login .clickCaptcha_text .icon_close {
        line-height: 30px;
        margin-left: 0;
        cursor: default;
        color: #ff3f08;
        font-size: 16px;
        float: left;
        margin-right: 0;
        background: transparent;
        z-index: 3
    }

    .nc-container.tb-login {
        position: relative;
        margin-top: 20px;
        display: none;
    }

    .nc-container.tb-login .nc_scale {
        width: auto;
    }

    .nc-container.tb-login .nc_scale .scale_text2 {
        text-indent: -42px;
        text-align: center;
    }

    .nc-container.tb-login .nc_scale .scale_text2 b {
        padding: 0
    }

    .nc-container.tb-login .nc_scale.nc_err div.scale_text {
        background: #f79977
    }

    .nc-container.tb-login .errloading {
        width: auto
    }

    .nc-container.tb-login .imgCaptcha, .nc-container.tb-login .clickCaptcha {
        width: 252px;
        *width: 256px;
        border: 0;
        *height: 300px;
        min-height: 300px;
        max-height: inherit !important;
    }

    .nc-container.tb-login .imgCaptcha div.login-msg.error, .nc-container.tb-login .clickCaptcha div.login-msg.error {
        background: #fff2f2
    }

    .nc-container.tb-login .imgCaptcha .captcha-error, .nc-container.tb-login .clickCaptcha .captcha-error {
        position: absolute;
        top: 0;
        width: 244px;
        height: auto;
        margin-bottom: 15px;
        padding: 3px;
        border: solid 1px #ff8e8e;
        line-height: 18px
    }

    .nc-container.tb-login .imgCaptcha .captcha-inform, .nc-container.tb-login .clickCaptcha .captcha-inform {
        font-size: 110%;
        margin-left: 20px
    }

    .nc-container.tb-login .imgCaptcha {
        padding-top: 66px;
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_text {
        width: 100px;
        margin-left: 0;
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_text input:focus {
        color: #000
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_img {
        width: 120px;
        _width: 100px
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_btn {
        width: 100%;
        margin-left: 0
    }

    .nc-container.tb-login .imgCaptcha .nc_scale_submit {
        width: 100%;
        height: 36px;
        line-height: 36px;
        margin-top: 20px;
        margin-left: 0;
        border-radius: 3px;
        font-size: 16px;
        font-family: Tahoma, Helvetica, Arial, sans-serif;
        background: #ff3f08
    }

    .nc-container.tb-login .clickCaptcha {
        padding-top: 40px;
    }

    .nc-container.tb-login .clickCaptcha .clickCaptcha_text {
        text-indent: 4px
    }

    .nc-container.tb-login .clickCaptcha .clickCaptcha_img img {
        margin-left: 10px
    }

    .nc-container.tb-login .nc_btn_1 {
        top: 77px;
        _top: 57px
    }

    .nc-container.tb-login .nc_btn_2 {
        top: 36px
    }

    .login .nc-container.tb-login .login-msg p, .login-box .nc-container.tb-login .login-msg p {
        width: auto;
        float: left
    }

    .nc-container.tb-login.nc-old-login {
        margin: 20px 0 10px 0;
        width: 250px;
    }

    .nc-container.tb-login.nc-old-login .nc_wrapper {
        width: 250px
    }

    .nc-container.tb-login.nc-old-login .imgCaptcha, .nc-container.tb-login.nc-old-login .clickCaptcha {
        width: 250px;
        min-height: auto;
    }

    .nc-container.tb-login.nc-old-login .imgCaptcha .captcha-error, .nc-container.tb-login.nc-old-login .clickCaptcha .captcha-error {
        line-height: 16px
    }

    .nc-container.tb-login.nc-old-login .clickCaptcha {
        padding-top: 28px;
    }

    .nc-container.tb-login.nc-old-login .clickCaptcha .clickCaptcha_img img {
        width: 200px;
        height: 200px
    }

    .nc-container.nc-old-login.show-click-captcha {
        padding-bottom: 60px
    }

    .nc-container.nc-old-login.show-click-captcha.nc-tm-min-fix {
        padding-bottom: 40px
    }

    .nc-container.tb-login.nc-tm-min-fix .clickCaptcha {
        max-height: 340px !important
    }

    #content .login-box .bd .nc-container.tb-login .login-msg {
        margin: 10px auto 15px auto
    }

    #content .login-box .bd .nc-container.tb-login.nc-old-login.show-click-captcha .login-msg {
        margin: 2px 0 0 0
    }

    .nc-container .nc_scale .nc-cc {
        display: none;
        position: absolute;
        left: 0;
        top: 35px;
        z-index: 20000;
        width: 360px;
        height: 570px;
        border: 1px solid #5eaef1;
        border-radius: 4px;
        background: #fff;
        font-size: 14px;
        line-height: 18px;
        color: #333;
    }

    .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn {
        background-color: #90c1eb
    }

    .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh {
        cursor: default
    }

    .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh {
        color: #999
    }

    .nc-container .nc_scale .nc-cc a {
        color: #3199f4;
        text-decoration: none
    }

    .nc-container .nc_scale .nc-cc .nc_iconfont {
        vertical-align: top;
        margin-right: 8px
    }

    .nc-container .nc_scale .nc-cc-btn {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        width: 100px;
        line-height: 30px;
        text-align: center;
        background-color: #3199f4;
        color: #fff;
        border-radius: 4px;
        cursor: pointer;
    }

    .nc-container .nc_scale .nc-cc-btn.nc-cc-disabled {
        background-color: #90c1eb;
        cursor: default
    }

    .nc-container .nc_scale .nc-cc-btn .nc-lang-cnt {
        line-height: 18px
    }

    .nc-container .nc_scale .nc-cc-header {
        padding: 20px 20px 19px 20px;
        height: 100px;
        background: #f4f8fa;
        border-bottom: 1px solid #ccc
    }

    .nc-container .nc_scale .nc-cc-img1-box {
        float: left;
        width: 100px;
        height: 100px;
        margin-right: 16px
    }

    .nc-container .nc_scale .nc-cc-txt {
        overflow: hidden;
        *zoom: 1;
        line-height: 30px;
        padding-top: 11px
    }

    .nc-container .nc_scale .nc-cc-img2-box {
        position: relative;
        padding: 0 20px;
        margin-top: 20px
    }

    .nc-container .nc_scale .nc-cc-items {
        position: absolute;
        left: 20px;
        _left: 0;
        top: 0;
        width: 320px;
        overflow: hidden
    }

    .nc-container .nc_scale .nc-cc-items-inner {
        margin-right: -20px
    }

    .nc-container .nc_scale .nc-cc-item {
        position: relative;
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        margin-right: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        width: 98px;
        height: 98px;
        background: url("//gtms02.alicdn.com/tps/i2/T1ty2QFNNXXXc6Yc2r-1-1.gif");
    }

    .nc-container .nc_scale .nc-cc-item:hover {
        border-color: #3199f4
    }

    .nc-container .nc_scale .nc-cc-item .nc_iconfont {
        display: none;
        position: absolute;
        right: 0;
        bottom: 0;
        color: #3199f4;
        font-size: 22px;
        margin-right: 0
    }

    .nc-container .nc_scale .nc-cc-item.nc-cc-selected .nc_iconfont {
        display: block
    }

    .nc-container .nc_scale .nc-cc-tip {
        display: none;
        position: absolute;
        left: 0;
        bottom: 60px;
        width: 360px;
        line-height: 18px;
        text-align: center;
        color: #eb4f38;
    }

    .nc-container .nc_scale .nc-cc-tip span {
        line-height: normal
    }

    .nc-container .nc_scale .nc-cc-footer {
        position: absolute;
        left: 0;
        bottom: 20px;
        width: 360px;
        height: 30px;
        line-height: 30px;
        text-align: center;
    }

    .nc-container .nc_scale .nc-cc-footer .nc_iconfont {
        color: #c4cbd0
    }

    .nc-container .nc_scale .nc-cc-refresh, .nc-container .nc_scale .nc-cc-wait {
        position: absolute;
        left: 20px;
        top: 0;
        color: #3199f4;
        cursor: pointer
    }

    .nc-container .nc_scale .nc-cc-wait {
        display: none
    }

    .nc-container .nc_scale .nc-cc-cancel {
        position: absolute;
        right: 20px;
        top: 0;
        color: #3199f4;
        cursor: pointer;
    }

    .nc-container .nc_scale .nc-cc-cancel .nc_iconfont {
        position: relative;
        top: -1px
    }

    .nc-container .nc_scale .nc-cc-loading {
        margin-top: 247px;
        text-align: center;
        line-height: 14px
    }

    .nc-container .nc_scale .nc-cc-loading-img {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        vertical-align: middle;
        background: url("//img.alicdn.com/tps/TB1OdxsKpXXXXcgXFXXXXXXXXXX-14-14.gif") no-repeat;
        width: 14px;
        height: 14px;
        position: relative;
        top: -1px;
        margin-right: 9px
    }

    .nc-container .nc_scale .nc-cc-fail {
        position: absolute;
        left: 50%;
        top: 50%;
        width: 320px;
        height: 180px;
        margin-left: -160px;
        margin-top: -90px;
        background: #fff;
        border-radius: 4px
    }

    .nc-container .nc_scale .nc-cc-fail-inner {
        text-align: center;
        padding: 55px 10px 10px
    }

    .nc-container .nc_scale .nc-cc-fail-action {
        margin: 28px 0 18px;
    }

    .nc-container .nc_scale .nc-cc-fail-action a {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        line-height: 30px;
        margin-left: 16px
    }

    .nc-container .nc_scale .nc-cc-contact {
        text-align: right;
        color: #666;
        padding-right: 9px
    }

    .nc-container .nc_scale .nc-cc-mask {
        display: none;
        position: absolute;
        left: 0;
        top: 0;
        width: 360px;
        height: 570px;
        background: rgba(0, 0, 0, 0.3);
        filter: progid:DXImageTransform.Microsoft.gradient(enabled='true', startColorstr='#4C000000', endColorstr='#4C000000');
    }

    :root .nc-container .nc_scale .nc-cc-mask {
        -webkit-filter: none;
        filter: none
    }

    .nc-container .nc_scale .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-arrow-2 {
        display: none;
        position: absolute;
        top: 340px;
        border: solid transparent;
        height: 0;
        width: 0
    }

    .nc-container .nc_scale .nc-cc-arrow-1 {
        border-width: 16px;
        margin-top: -1px
    }

    .nc-container .nc_scale .nc-cc-arrow-2 {
        border-width: 15px
    }

    .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2, .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2 {
        display: block;
        _display: none
    }

    .nc-container .nc_scale .nc-cc-right {
        left: 180px;
        top: -339px;
    }

    .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1 {
        border-right-color: #5eaef1;
        left: -32px
    }

    .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2 {
        border-right-color: #fff;
        left: -30px
    }

    .nc-container .nc_scale .nc-cc-left {
        left: -335px;
        top: -339px;
    }

    .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1 {
        border-left-color: #5eaef1;
        right: -32px
    }

    .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2 {
        border-left-color: #fff;
        right: -30px
    }</style>
    <script src="//g.alicdn.com/secdev/sufei_data/3.8.7/index.js" id="aplus-sufei"></script>
    <script src="//g.alicdn.com/secdev/nsv/1.0.72/ns_d_83_3_n.js"></script>
    <script src="//g.alicdn.com/AWSC/et/1.2.6/et_n.js"></script>
</head>

<body data-spm="1">
<script id="tb-beacon-aplus" src="//g.alicdn.com/alilog/mlog/aplus_v2.js"
        exparams="category=&amp;userid=&amp;aplus&amp;yunid=&amp;3ebea51eaebeb&amp;trid=0b87bddc15853510079115353e103f&amp;asid=AQAAAABfiX5e5GMEOQAAAAA6OAfB3+s8Ag=="></script>


<div id="page2">
    <div id="content">
        <div id="J_LoginBox" class="login-box no-longlogin module-static">
            <div class="hd">
                <!--标准登录框-->
                <div class="static-form" id="J_StaticForm">
                    <div style="margin-left: 10%" class="login-title">


                        密码登录

                    </div>

                    <form
                          method="post">
                        <div style="margin-left: 8%;display: none" id="J_Message" class="login-msg error">
                            <i class="iconfont"></i>

                            <p class="error" id="msg"></p>

                        </div>
                        <!-- 手机号登录 -->


                        <div style="margin-left: 8%;height: 40px" class="field ph-hide username-field">
                            <label for="TPL_username_1"> <i class="iconfont" title="会员名"></i></label>
                            <span class="ph-label">会员名/邮箱/手机号</span>
                            <input type="text" name="loginUser" style="height: 40px;width: 300px"
                                                                            id="TPL_username_1"
                                                                            class="login-text J_UserName" value=""
                                                                            maxlength="32" tabindex="1"
                                                                            aria-label="会员名/邮箱/手机号">
                            <span  id="J_NickX1585351009437" class="nickx" onclick="loginNameClear()"
                                  style="display: block;right: 10%"><i class="iconfont"></i></span></div>

                        <div style="margin-left: 8%;height: 40px"  class="field pwd-field">
                            <label id="password-label" for="TPL_password_1"><i class="icon iconfont" title="登录密码"></i></label>
                            <span id="J_StandardPwd">
				   <input style="height: 40px;width: 300px" type="password" name="loginPassword" id="TPL_password_1" class="login-text" maxlength="40"
                          tabindex="2" autocomplete="off" aria-label="登录密码">
				</span>
                        </div>
                        <div style="margin-left: 8%" class="submit">
                            <button type="button" onclick="loginx()" class="J_Submit" tabindex="3" id="J_SubmitStatic" data-ing="正在登录...">登
                                录
                            </button>
                            <script>
                                function loginx() {
                                    var loginName = $("#TPL_username_1").val();
                                    var password  =  $("#TPL_password_1").val();
                                    $.post("/before/user/login",{"loginName":loginName,"loginPassword":password},function (data) {
                                        var obj = JSON.parse(data);
                                        if(obj.flag == 1){
                                            $("#msg").html(obj.msg);
                                            $("#J_Message").css(
                                                {"display":"block"}
                                            );
                                        }else {
                                            window.location.href = "/before/main";
                                        }
                                    })
                                }
                                function loginNameClear(){
                                    $("#TPL_username_1").val('')
                                }
                            </script>
                        </div>

                        <ul class="entries">
                            <li id="J_OtherLogin" class="other-login">


                            </li>
                        </ul>


                        <div class="login-links">


                            <%--<a href="https://passport.taobao.com/ac/password_find.htm?from_site=0&amp;login_id=&amp;lang=zh_CN&amp;app_name=tmall&amp;tracelog=signin_main_pass"--%>
                               <%--tabindex="6" class="forget-pwd" target="_blank">--%>
                                <%--忘记密码</a>--%>

                            <%--<a href="https://passport.taobao.com/ac/nick_find.htm?from_site=0&amp;lang=zh_CN&amp;app_name=tmall"--%>
                               <%--target="_blank">忘记会员名</a>--%>

                            <a href="/pages/before/register.jsp" class="register" target="_blank" tabindex="7">免费注册</a>

                        </div>
                        <input type="hidden" name="um_token"
                               value="T4FFB6D0525F3E092D86F165FADBDF327D93DEE5E6E31FF34B7D60BF2B2"></form>
                </div>


                <!--快速登录开始-->
                <div class="quick-form">
                    <!--扫码登录开始-->
                    <div class="qrcode-login" id="J_QRCodeLogin">
                        <div class="login-tip" style="display:block;">
                            <div class="poptip">
                                <div class="poptip-arrow">
                                    <em></em>
                                    <span></span>
                                </div>
                                <div class="poptip-content">
                                    <i class="iconfont"></i>密码登录在这里
                                </div>
                            </div>
                        </div>
                        <div class="login-title">手机扫码，安全登录</div>

                        <div class="qrcode-mod">
                            <div class="qrcode-main">
                                <div class="qrcode-img" id="J_QRCodeImg" style="opacity: 1;"></div>
                                <div class="qrcode-help"></div>
                                <div class="msg-err">
                                    <h6>二维码已失效</h6>
                                    <a href="javascript:;" class="refresh J_QRCodeRefresh">请点击刷新</a>
                                </div>
                            </div>
                            <div class="qrcode-desc" data-spm="25847036">
                                <i class="iconfont"></i>

                                <p><font class="ft-gray">打开 </font><a
                                        href="https://www.tmall.com/wow/portal/act/app-download?mmstat=pc_login"
                                        target="_blank" class="light-link">手机天猫</a> | <a href="https://www.taobao.com/m"
                                                                                         target="_blank"
                                                                                         class="light-link">手机淘宝</a>
                                    <span class="ft-gray">扫一扫登录</span></p>

                            </div>

                        </div>
                        <div class="qrcode-msg">
                            <div class="msg-ok">
                                <div class="msg-icon">
                                    <i class="iconfont icon-ok"></i>
                                    <i class="iconfont icon-phone"></i>
                                </div>
                                <h6>扫描成功！</h6>
                                <p>请在手机上确认登录</p>
                                <div class="link"><a href="#" class="light-link J_QRCodeRefresh">返回二维码登录</a></div>
                            </div>
                        </div>
                        <div class="login-links">
                            <a href="" class="forget-pwd J_Quick2Static" target="_blank">密码登录</a>
                            <a href="http://register.tmall.com?f=login" class="register" target="_blank">免费注册</a>
                        </div>
                    </div>
                    <!--扫码登录结束-->
                    <!--一键登录开始-->

                    <!--一键登录结束-->
                </div>
                <!--快速登录结束-->
            </div>
        </div>
        <!--标准登录框结束-->
    </div>
</div>
<!--登录脚本-->
</body>
</html>