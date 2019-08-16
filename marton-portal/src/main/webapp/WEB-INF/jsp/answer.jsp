<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jstl.jsp"%>
<%@page isELIgnored="false" %>
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
        .feed {
            width: 78px;
            height: 84px;
            padding: 6px 3px 0;
            border: solid 1px #eee;
            border-radius: 4px;
            text-align: center;
            color: #20c6d5;
        }
        .info-list .list {
            margin-top: 35px;
        }
        .clearfix {
            zoom: 1;
        }
        .clearfix::before {
            content: "";
            display: block;
            clear: both;
            visibility: hidden;
            overflow: hidden;
        }
        .fl {
            float: left;
        }
        .feed .heart {
            background: url(../images/up.png) 0 0 no-repeat;
            width: 20px;
            height: 24px;
            display: inline-block;
            cursor: pointer;
        }
        .feed .item {
            border-top: solid 1px #eee;
            line-height: 1.2;
            padding-top: 8px;
            margin-top: 5px;
            font-size: 12px;
        }
        .feed .number {
            font-size: 17px;
        }
        .info-list .info {
            width: 920px;
            border-bottom: solid 1px #eee;
            padding-bottom: 25px;
            margin-left: 20px;
        }
        .fr {
            float: right;
        }
        .info-1 .sub-title {
            font-size: 18px;
            color: #259;
            margin-bottom: 7px;
            line-height: 29px;
        }
        .clearfix:after, .clearfix:before {
            content: "";
            display: block;
            clear: both;
            visibility: hidden;
            overflow: hidden;
        }
        .personal-home .answer-list .info-list .info-3 {
            min-height: 42px;
        }
        .personal-home .answer-list .info-list .info-3 .intrs {
            font-size: 14px;
        }
        .normal-button {
            background: #e6454a;
            width: 135px;
            height: 50px;
            line-height: 50px;
            display: block;
            text-align: center;
            color: #fff;
            border: 0;
            cursor: pointer;
            font-size: 20px;
            margin: 80px auto 30px;
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
                                <a class="nav-link" href="/index.html">首页</a>
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
<section class="dashboard section">
    <div class="container">

        <!-- hot-topic end -->
        <!-- hot-answers start-->
        <div class="hot-answers">
            <h2 class="title">热门解答</h2>
            <div class="info-list">
                <tr>
                    <c:forEach items="${answer}" var="a">
                        <td>
                            <!--list start-->
                            <div class="list clearfix">
                                <div class="fl feed">
                                    <span class="number"><i class="likecount" id="sccount129084">${a.support}</i>人</span><br>觉得有用
                                </div>
                                <div class="fr info">
                                    <div class="info-1 clearfix">
                                        <span class="fl sub-title"><a href="#" class="num">${a.userid}</a>
                                            <i></i>
                                        </span>
                                        <!-- 未采纳 -->
                                    </div>
                                    <div class="info-3">
                                        <div class="intrs smallContent">${a.answer}</div>
                                        <p class="time">${a.time} </p>
                                    </div>
                                </div>
                            </div>
                            <!--list end-->
                        </td>
                    </c:forEach>
                </tr>
            </div>
            <h2 class="title">我来回答</h2>
            <div style="width: 925px; border-width: 1px 1px 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; overflow: hidden auto; max-height: 200px;">

                <div class=" nicEdit-main  " contenteditable="true" style="width: 917px; margin: 4px; min-height: 190px; overflow: hidden;">
                </div></div>
                <textarea rows="10" style="width: 100%; overflow: auto; display: none;" name="content" id="content"> </textarea>
            </div>
            <input type="button" value="提交答案" class="normal-button flright" onclick="test('${answer[0].qid}')">
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

    function tel(){
        alert("13800138000");
    }
    function us(){
        var p = "本项目由黄禹铭制作";
        alert(p);
    }
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
    function ifCookie(c_name) {
        if(document.cookie.length > 0) {
            c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
            if(c_start != -1) {
               return true;
            }
            return false;
        }
    }
    function test(c_name) {
        if(ifCookie("TT_TOKEN")){
            alert("发表成功");
        }else{
            alert("请登陆");
            window.location.href="http://localhost:8082/login.html";
        }
    }
</script>
</body>

</html>