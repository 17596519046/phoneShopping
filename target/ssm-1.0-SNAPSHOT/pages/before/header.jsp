<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"views/";
%>

<link rel="stylesheet" type="text/css" href="css/header.css"/>
<!--头部-->


<div class="header_wrap">
	<ul>

		<li><a href="#">登录</a></li>
		<li><a href="#">注册</a></li>
		<li><a href="#">我的收藏</a></li>
		<li><a href="#">我的购物车</a></li>
		<li><a href="#">我的订单</a></li>
		<li><a href="#">帮助中心</a></li>
		<li><a href="#">商家后台</a></li>

	</ul>
</div>
