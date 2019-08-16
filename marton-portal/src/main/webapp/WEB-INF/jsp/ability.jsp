<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jstl.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
	<!-- SITE TITTLE -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>月嫂网站</title>

	<!-- PLUGINS CSS STYLE -->
	<!-- Bootstrap -->
	<link href="${path}/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="${path}/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- Owl Carousel -->
	<link href="${path}/plugins/slick-carousel/slick/slick.css" rel="stylesheet">
	<link href="${path}/plugins/slick-carousel/slick/slick-theme.css" rel="stylesheet">
	<!-- Fancy Box -->
	<link href="${path}/plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
	<link href="${path}/plugins/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<link href="${path}/plugins/seiyria-bootstrap-slider/dist/css/bootstrap-slider.min.css" rel="stylesheet">
	<!-- CUSTOM CSS -->
	<link href="${path}/css/style.css" rel="stylesheet">

	<!-- FAVICON -->
	<link href="${path}/img/favicon.png" rel="shortcut icon">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body class="body-wrapper">


<section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg  navigation">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto main-nav ">
							<li class="nav-item active">
								<a class="nav-link" href="index.html">首页</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/matronlist.html">找月嫂</a>
							</li>
							<li class="nav-item dropdown dropdown-slide">
								<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									其他服务 <span><i class="fa fa-angle-down"></i></span>
								</a>
								<!-- Dropdown list -->
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="http://localhost:8090/Video_war_exploded/test.html">直播专区</a>
									<a class="dropdown-item" href="/question.html">知识问答</a>
									<a class="dropdown-item" href="/ability.html">技能学习</a>
								</div>
							</li>
							<li class="nav-item dropdown dropdown-slide">
								<a class="nav-link dropdown-toggle" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									关于我们 <span><i class="fa fa-angle-down"></i></span>
								</a>
								<!-- Dropdown list -->
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="/ysservice.html">月嫂服务</a>
									<a class="dropdown-item" href="/servicegc.html">服务流程</a>
									<a class="dropdown-item" href="/price.html">收费标准</a>
									<a class="dropdown-item" href="#">联系我们</a>
								</div>
							</li>
						</ul>
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item" id="login-button">
								<a class="nav-link login-button" href="http://localhost:8082/login.html">登陆</a>
							</li>
							<li class="nav-item">
								<a class="nav-link add-button" href="http://localhost:8082/regist.html"><i class="fa fa-plus-circle"></i> 注册</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</section>

<!--================================
=            Page Title            =
=================================-->
<section class="page-title">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2 text-center">
				<!-- Title text -->
				<h3>技能培训页面</h3>
			</div>
		</div>
	</div>
	<!-- Container End -->
</section>
<!--==================================
=            Blog Section            =
===================================-->

<section class="blog section">
	<div class="container">
		<div class="row">
			<div class="col-md-10 offset-md-1 col-lg-9 offset-lg-0">
				<!-- Article 01 -->
				<article>
	<!-- Post Image -->
					<video width="860" height="610" controls="controls">
						<source src="/i/movie.ogg" type="video/ogg" />
						<source src="http://pgc.cdn.xiaodutv.com/1077203791_104566889_20170518192611.mp4?authorization=bce-auth-v1%2Fc308a72e7b874e
						dd9115e4614e1d62f6%2F2017-05-18T11%3A26%3A15Z%2F-1%2F%2F7a49ab7f2ae14b78cefb4aab511ff54627082ffb487d5fa019d4138d78bc5cc7&r
						esponseCacheControl=max-age%3D8640000&responseExpires=Sat%2C+26+Aug+2017+19%3A26%3A15+GMT&xcode=e4585250ac9c4e1d247c8a1380
						0e96cb46844dd5f7702c6d&time=1555992898&_=1555906511672" type="video/mp4" />
						<source src="/i/movie.webm" type="video/webm" />
						<object data="/i/movie.mp4" width="320" height="240">
							<embed width="320" height="240" src="/i/movie.swf" />
						</object>
					</video>

	<!-- Post Title -->
	<h3>高素质月嫂、服务标准</h3>
	<ul class="list-inline">
		<li class="list-inline-item">by <a href="">Admin</a></li>
		<li class="list-inline-item">2019.04.22</li>
	</ul>
	<!-- Post Description -->

</article>
				<!-- Article 02 -->
				<article>
					<div class="post-slider owl-carousel owl-theme">

						<video width="860" height="610" controls="controls">
							<source src="/i/movie.ogg" type="video/ogg" />
							<source src="http://pgc.cdn.xiaodutv.com/314204420_2801594115_20171125142355.mp4?authorization=bce-auth-v1%2Fc308a72e7b874
							edd9115e4614e1d62f6%2F2017-11-25T06%3A23%3A59Z%2F-1%2F%2F0f2885477214d33ef1547a111922d46c9d28a54199aab63252e1302fcdd7560a
							&responseCacheControl=max-age%3D8640000&responseExpires=Mon%2C+05+Mar+2018+14%3A23%3A59+GMT&xcode=2527b00b1b93dc43a69e6a3
							46a7682439dfa434e5f36acdd&time=1555993151&_=1555906767970" type="video/mp4" />
							<source src="/i/movie.webm" type="video/webm" />
							<object data="/i/movie.mp4" width="320" height="240">
								<embed width="320" height="240" src="/i/movie.swf" />
							</object>
						</video>
					</div>
					<h3>新生儿护理</h3>
					<ul class="list-inline">
						<li class="list-inline-item">by <a href="">Admin</a></li>
						<li class="list-inline-item">2019.04.21</li>
					</ul>

				</article>
				<!-- Article 03 -->
				<article>
					<div class="post-slider owl-carousel owl-theme">
						<div class="video-button video-box">
							<video width="860" height="610" controls="controls">
								<source src="/i/movie.ogg" type="video/ogg" />
								<source src="https://apd-5ac11c92ae3e049167a8f2ab698be495.v.smtcdns.com/vhot2.qqvideo.tc.qq.com/ArW2V_9HX40ovGc7h1Dd
								aEqi3zP-YxO25Byp73u5skVs/uwMROfz0r5zEYaQXGdGnC2dfDmYZuJ2pY2FAhIKRx44JHPsG/j0854hmwj3n.mp4?sdtfrom=v1010&guid=8cbe259
								b6ed75068469bb43feb8fcca7&vkey=9758007C155F3F3E351E1A552F78BC30668B0B32870BB3B7EB599E7B598870A9820E8C2FFDBBDC8BEF266
								C1CC0D7B9E7C3C2A234A1E76CE4E4EF174D56E94B8EDB1404B353B3E5AC65047DF46677A392F7FADBC75B7A70177882A5F2DD2DB9CC795C2D72A
								FA2CCA069AA998ACF7DBDCF48458CDEA27A2CB4" type="video/mp4" />
								<source src="/i/movie.webm" type="video/webm" />
								<object data="/i/movie.mp4" width="320" height="240">
									<embed width="320" height="240" src="/i/movie.swf" />
								</object>
							</video>
						</div>
					</div>
					<h3>如何选择月嫂</h3>
					<ul class="list-inline">
						<li class="list-inline-item">by <a href="">Admin</a></li>
						<li class="list-inline-item">2019.04.20</li>
					</ul>

				</article>
				<!-- Article 04 -->
				<article>
	<!-- Post Image -->
				</article>
			</div>

		</div>
	</div>
</section>

<!--============================
=            Footer            =
=============================-->

<footer class="footer section section-sm">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-7 offset-md-1 offset-lg-0">
				<!-- About -->
				<div class="block about">
					<!-- footer logo -->
					<img src="images/logo.png" alt="">
					<!-- description -->
				</div>
			</div>
			<!-- Link list -->
			<div class="col-lg-2 offset-lg-1 col-md-3">
				<div class="block">
					<h4 style="color: #ffffff">联系我们</h4>
					<ul>
						<li><a href="#">qq:695560373</a></li>
						<li><a href="#">vx:695560373</a></li>
						<li><a href="#">tel:15521373821</a></li>
					</ul>
				</div>
			</div>
			<!-- Link list -->
			<div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0">
				<div class="block">
					<h4 style="color: #ffffff">关于我们</h4>
					<ul>
						<li><a href="/price.html">月嫂价格</a></li>
						<li><a href="/ysservice.html">月嫂服务</a></li>
						<li><a href="/matronlist.html">找月嫂</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0">
				<div class="block">
					<h4 style="color: #ffffff">招娉信息</h4>
					<ul>
						<li><a href="/matroncheck.html">注册月嫂</a></li>
					</ul>
				</div>
			</div>
			<!-- Promotion -->

		</div>
	</div>
	<!-- Container End -->
</footer>
<!-- Footer Bottom -->
<footer class="footer-bottom">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-12">
				<!-- Copyright -->
				<div class="copyright">
					<p>© 2019.Mark by 老高</p>
				</div>
			</div>
			<div class="col-sm-6 col-12">
				<!-- Social Icons -->

			</div>
		</div>
	</div>
	<!-- Container End -->
	<!-- To Top -->
	<div class="top-to">
		<a id="top" class="" href=""><i class="fa fa-angle-up"></i></a>
	</div>
</footer>

<!-- JAVASCRIPTS -->
<script src="${path}/plugins/jquery/dist/jquery.min.js"></script>
<script src="${path}/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="${path}/plugins/tether/js/tether.min.js"></script>
<script src="${path}/plugins/raty/jquery.raty-fa.js"></script>
<script src="${path}/plugins/bootstrap/dist/js/popper.min.js"></script>
<script src="${path}/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${path}/plugins/seiyria-bootstrap-slider/dist/bootstrap-slider.min.js"></script>
<script src="${path}/plugins/slick-carousel/slick/slick.min.js"></script>
<script src="${path}/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<script src="${path}/plugins/fancybox/jquery.fancybox.pack.js"></script>
<script src="${path}/plugins/smoothscroll/SmoothScroll.min.js"></script>

<script src="../../js/scripts.js"></script>
<script>
	checkCookie("TT_TOKEN");
	function getCookie(c_name) {
		if(document.cookie.length > 0) {
			c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
			if(c_start != -1) {
				c_start = c_start + c_name.length + 1;//获取值的起点
				c_end = document.cookie.indexOf(";", c_start);//获取结尾处
				if(c_end == -1) c_end = document.cookie.length;//如果是最后一个，结尾就是cookie字符串的结尾
				return decodeURI(document.cookie.substring(c_start, c_end));//截取字符串返回
			}
		}
		return "";
	}
	function checkCookie(c_name) {
		if(document.cookie.length > 0) {
			c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
			if(c_start != -1) {
				var innerHtml = "<a class=\"nav-link login-button\" href=\"http://localhost:8082/login.html\">注销</a>";
				$("#login-button").html(innerHtml);

			}
		}
	}
</script>

</body>

</html>