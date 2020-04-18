<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
	<head>
		<meta charset="UTF-8">
		<meta charset="UTF-8">
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<script src="${pageContext.request.contextPath}/js/jquery.1.12.4.min.js" charset="UTF-8"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.js" charset="UTF-8"></script>
		<script src="${pageContext.request.contextPath}/js/swiper.min.js" charset="UTF-8"></script>
		<script src="${pageContext.request.contextPath}/js/global.js" charset="UTF-8"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
		<title>社区团购网</title>
	</head>
	<body>
		<!-- 顶部tab -->
		<div class="tab-header">
			<div class="inner">
				<div class="pull-left">
					<div class="pull-left">嗨，欢迎来到<span class="cr">社区团购网</span></div>
				</div>
				<div class="pull-right">
					<a href="http://localhost:63342/sqtg/login.html"><span class="cr">登录</span></a>
					<a href="http://localhost:63342/sqtg/login.html?p=register">注册</a>
				</div>
			</div>
		</div>
		<!-- 顶部标题 -->
		<div class="bgf5 clearfix">
			<div class="top-user">
				<div class="inner">
					<div class="logo">社区团购网</div>
					<div class="title">个人中心</div>
				</div>
			</div>
		</div>

		<div class="content clearfix bgf5">
			<section class="user-center inner clearfix">
				<div class="pull-left bgf">
					<a href="udai_welcome.html" class="title">欢迎页</a>
					<dl class="user-center__nav">
						<dt>帐户信息</dt>
						<a href="udai_setting.html"><dd class="active">个人资料</dd></a>
						<a href="udai_paypwd_modify.html"><dd>修改支付密码</dd></a>
						<a href="udai_pwd_modify.html"><dd>修改登录密码</dd></a>
					</dl>
					<dl class="user-center__nav">
						<dt>订单中心</dt>
						<a href="udai_order.html"><dd>我的订单</dd></a>
						<a href="udai_collection.html"><dd>我的收藏</dd></a>
						<a href="udai_refund.html"><dd>退款/退货</dd></a>
						<a href="udai_mail_query.html"><dd>物流查询</dd></a>
					</dl>
					<dl class="user-center__nav">
						<dt>团购管理</dt>
						<a href="${pageContext.request.contextPath}/user/groupBuy"><dd >团购订单</dd></a>
					</dl>
				</div>
				<div class="pull-right">
					<div class="user-content__box clearfix bgf">

						<!--修改的内容-->
						<div class="title">账户信息-个人资料</div>
							<form action="${pageContext.request.contextPath}/user/saveByUserName"  class="user-setting__form" role="form">
							<div class="user-form-group">
								<label for="user-id">用户名：</label>
								<input type="text" disabled id="user-id" name="username" value="${userList.username}" placeholder="请输入您的昵称">
							</div>
							<div class="user-form-group">
								<label for="user-id">手机号：</label>
								<input type="text"  name="phone" value="${userList.phone}" placeholder="请输入您的手机号">
							</div>
							<div class="user-form-group">
								<label for="user-id">注册时间：</label>
								<input type="text" disabled id="loginTime" name="loginTime" value="${userList.loginTimeStr}" placeholder="请输入您的昵称">
							</div>
							<div class="user-form-group">
								<label for="user-id">账号状态：</label>
								<input type="text" disabled id="userStatus" name="accountStatus" value="${userList.accountStatusStr}" placeholder="请输入您的昵称">
							</div>
							<div class="user-form-group">
								<label for="user-id">地址：</label>
								<input type="text" id="user-adress" name="user_address" value="${userList.user_address}" placeholder="请输入您的地址" style="width: 80%">
							</div>
							<div class="user-form-group">
								<button type="submit" class="btn">确认修改</button>
							</div>
						</form>
						<script src="js/zebra.datepicker.min.js"></script>
						<link rel="stylesheet" href="css/zebra.datepicker.css">
						<script>
							$('input.datepicker').Zebra_DatePicker({
			default_position: 'below',
			show_clear_date: false,
			show_select_today: false,
		});
	</script>
						<!--修改的内容-->

					</div>
				</div>
			</section>
		</div>

		<!-- 右侧菜单 -->
		<div class="right-nav">
			<ul class="r-with-gotop">
				<li class="r-toolbar-item">
					<a href="http://localhost:63342/sqtg/udai_welcome.html" class="r-item-hd">
						<i class="iconfont icon-user"></i>
						<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
					</a>
				</li>
				<li class="r-toolbar-item">
					<a href="http://localhost:63342/sqtg/template.html" class="r-item-hd">
						<i class="iconfont icon-cart" data-badge="10"></i>
						<div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
					</a>
				</li>
				<li class="r-toolbar-item">
					<a href="http://localhost:63342/sqtg/udai_collection.html" class="r-item-hd">
						<i class="iconfont icon-aixin"></i>
						<div class="r-tip__box"><span class="r-tip-text">我的收藏</span></div>
					</a>
				</li>
				<li class="r-toolbar-item to-top" style="cursor: pointer; display: none;">
					<i class="iconfont icon-top"></i>
					<div class="r-tip__box"><span class="r-tip-text">返回顶部</span></div>
				</li>
			</ul>
			<script>
				$(document).ready(function(){ $('.to-top').toTop({position:false}) });
			</script>
		</div>
		<!-- 底部信息 -->
		<div class="footer">
			<div class="footer-tags" style="padding-top: 10px;padding-bottom: 10px">
				<div class="copy-box clearfix" style="height: 30px">
					<!-- 版权 -->
					<p class="copyright">
						© 社区团购网 版权所有，并保留所有权利
					</p>
				</div>
			</div>
		</div>
	</body>
</html>
