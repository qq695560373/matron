<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jstl.jsp"%>
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
    <link href="${path}/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
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
    <style>
        .fwlc{
            width: 1150px;
            margin:80px auto;
        }
        .yzTitle {
            text-align: center;
            font-size: 30px;
            margin-bottom: 22px;
            position: relative;
            font-weight: 600;
            letter-spacing: 3px;
        }
        .yzVice {
            text-align: center;
            font-size: 18px;
            margin-bottom: 22px;
        }
    </style>
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
<!--==================================
=            User Profile            =
===================================-->

<div class="fwlc">
    <div class="yzTitle">服务流程</div>
    <div class="yzVice">标准流程 贴心服务</div>
    <img src="images/fwlc.png">
</div>
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