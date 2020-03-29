<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"views/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>">
	<link rel="icon" href="img/icon.png" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="/css/base-aa24246264.css"/>
	<link rel="stylesheet" type="text/css" href="/css/welcome-fc9359d842.css"/>
	<link rel="stylesheet" type="text/css" href="/css/sidebar.css"/>
	<link rel="stylesheet" type="text/css" href="/css/content.css"/>
	<title>贵美·商城</title>

</head>

<body>
<!-- 头部导航 -->
<jsp:include page="/pages/before/header.jsp"></jsp:include>

<!--搜索框-->
<div class="logo"></div>
<div id="com-search">
	<div class="search">

		<div class="search-tab">
			<span class="active">宝贝</span><span class="">店铺</span>			</div>
		<div class="search-box">
			<input class="search-txt" placeholder="" type="text">
			<span class="search-btn"></span>
			<div class="suggest-box" style="display: none;"></div>
		</div>
		<div class="hotword">
			<a target="_blank" href="#" style="color:#FF3366">连衣裙</a>
			<a target="_blank" href="#" style="color:#666666">运动鞋</a>
			<a target="_blank" href="#" style="color:#FF3366">雪纺衫</a>
			<a target="_blank" href="#" style="color:#FF3366">衬衫</a>
			<a target="_blank" href="#" style="color:#666666">薄外套</a>
			<a target="_blank" href="#" style="color:#666666">T恤</a>
			<a target="_blank" href="#" style="color:#666666">套装</a>
			<a target="_blank" href="#" style="color:#666666">牛仔裤</a>
			<a target="_blank" href="#" style="color:#FF3366">小白鞋</a>
			<a target="_blank" href="#" style="color:#666666">风衣</a>
			<a target="_blank" href="#" style="color:#FF3366">绑带凉鞋</a>
			<a target="_blank" href="#" style="color:#666666">粗跟单鞋</a>
		</div>
	</div>
</div>

<!--导航 -->
<div id="nav">
	<ul>
		<li>
			<a href="#" class="selected">首页</a>
		</li>
		<li>
			<a href="#">上衣</a>
		</li>
		<li>
			<a href="#">裙子</a>
		</li>
		<li>
			<a href="#">裤子</a>
		</li>
		<li>
			<a href="#">女鞋</a>
		</li>
		<li>
			<a href="#">包包</a>
		</li>
		<li>
			<a href="#">配饰</a>
		</li>
		<li>
			<a href="#">美妆</a>
		</li>
	</ul>
</div>
<hr />

<!--广告轮播图-->
<div class="ad">
	<div class="inner">
		<img src="/img/image/backLogo.png"/>
		<img src="/img/image/1.jpg.jpg"/>
		<img src="/img/image/2.jpg"/>
	</div>
</div>

<!--商品展示-->
<h2>贵美优选</h2>

<div id="wrap">


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>


	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>

	<!-- 商品信息  -->

	<div class="products">
		<!--商品图片-->
		<a   href="#" class="pimg" style="background-image: url(img/1.jpg);"></a>
		<div class="info">
			<div class="part">
				<!--商品价格-->
				<div class="price">￥1000</div>
				<div class="collect">
					<!--商品收藏-->
					<i class="icon-star"></i>100
				</div>
			</div>
			<i class="icon-select">
				<!--商品简介-->
			</i>商品简介
		</div>
	</div>
</div>
<!-- 底部导航 -->
<jsp:include page="/pages/before/footer.jsp"></jsp:include>
</body>
</body>
</html>
