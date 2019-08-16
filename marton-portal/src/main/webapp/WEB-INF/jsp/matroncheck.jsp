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
        .dj-info-list {
            width: 100%;
            margin: 0 auto;
        }
        .dj-info-list .cont {
            background: #fff;
            width: auto;
            height: 180px;
            clear: both;
            overflow: hidden;
        }
        .clearfix {
            zoom: 1;
        }
        .fl {
            float: left;
        }
        .fr {
            clear: both;
            font-size: 25px;
            font-weight:bold;
            color: #000000;
            margin-top: 4px;
        }
        .dj-info-list .item-1 .big-size {
            font-size: 22px;
            float: left;
            width: 90px;
        }
        .dj-info-list .level {
            margin: 2px 10px 0 0;
            float: left;
        }
        .level.level-5 {
            background-position: 0 -147px;
        }
        .dj-info-list .gay {
            margin-top: 7px;
            color: #ff334e;
            display: inline-block;
        }
        .dj-info-list .item-1 .intr-2 {
            line-height: 20px;
            color: #848c99;
            margin-top: 75px;
        }
        .dj-info-list .cont .photos {
            position: relative;
            width: 180px;
            height: 1800px;
        }
        .dj-info-list .item-1 {
            float: left;
            width: 280px;
            padding: 20px 0 0 40px;
        }
        .dj-info-list .item-2 {
            float: left;
            width: 243px;
            min-height: 1px;
        }
        .dj-info-list .item-3 {
            float: right;
            width: 166px;
            font-size: 18px;
            padding-right: 40px;
        }
        .dj-info-list .item-2 .intr-1 {
            margin-top: 15px;
            clear: both;
            overflow: hidden;
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
<div class="fwlc" style="text-align: center">
    <input type="text" id="userid" style="display:none">
    <font style="font-size: 25px;"><b>请填写证书证明：</b></font><br>
    <input type="text" id="paper" style="text-align: center;width: 800px;height: 300px; padding: auto;"><br>
    <input type="button" onclick="send()" style="margin-top: 20px;width: 80px;height: 40px;margin-bottom: 50px;" value="提交">
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
    var num = {
        value: 0
    };
    var uurl = {
        value: 'http://localhost:8081/matronlist/all'
    };
    var userid = {
        value: 0
    };
    show(1,10,uurl.value)
    function show(currentPage,pageSize,url){
        var params = 'currentPage='+currentPage+'&pageSize='+pageSize;
        $.ajax({
            url: url,
            type: "GET",
            dataType: "jsonp", //指定服务器返回的数据类型
            jsonpCallback:"jsonpCallback",
            success: function (data) {

                if (true) {
                    var list=eval(data);
                    var innerHtml="";
                    console.log(data);
                    uurl.value = url;
                    for(var i=0;i<list.length;i++){
                        if(i>=(currentPage-1)*pageSize&&i<currentPage*pageSize) {
                            var obj = list[i];
                            innerHtml+="<div class=\"dj-info-list\"> <div class=\"cont clearfix\"><div class=\"photos fl\"><img src=\""+
                                obj.photo+"\" width=\"200\" height=\"200\" class=\"fl\"><a class=\"on\" href=\""+"\"></a> </div>"+
                                "<div class=\"item-1\"> <p class=\"intr-1\"><i class=\"big-size\"><a href=\"/matrondetail/"+obj.id+".html\">"+obj.name+"</a></i>"+
                                "<span class=\"level level-5\"></span><i class=\"gay\">"+obj.star+"</i></p><p class=\"intr-2\">"+
                                obj.year+"<span class=\"seperate\">|</span>"+ obj.address+ "</p>"+ "<p class=\"intr-3\">"+obj.evaluation+"</p></div>"+
                            "<div class=\"item-2\"> <div class=\"intr-1\"> <p class=\"fr\"><i class=\"big-size\">"+obj.price+"</i>元/26天</p>"+
                            "<p> <i class=\"name\">"+obj.sign+"</i></p> </div> </div> </div> </div><br>";
                        }
                    }
                }
                $("#tbody").html(innerHtml);
                $("#totalPage").text("共"+Math.ceil(list.length/10)+"页");
                num.value = Math.ceil(list.length/10);
                $("#currentPage").text(currentPage);
                $("#totalCount").text("总计:"+list.length+"条");
            }
        });
    }
    checkCookie("TT_TOKEN");
    getCookie("TT_TOKEN");
    function getCookie(c_name) {
        if (document.cookie.length > 0) {
            c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
            if (c_start != -1) {
                c_start = c_start + c_name.length + 1;//获取值的起点
                c_end = document.cookie.indexOf(";", c_start);//获取结尾处
                if (c_end == -1) c_end = document.cookie.length;//如果是最后一个，结尾就是cookie字符串的结尾
                var urll = "http://localhost:8084/token/" + decodeURI(document.cookie.substring(c_start, c_end));//截取字符串返回
                $.ajax({
                    url: urll,
                    type: "GET",
                    dataType: "jsonp", //指定服务器返回的数据类型
                    jsonpCallback: "jsonpCallback",
                    success: function (data) {
                        var list = eval(data);
                        userid.value = list.id;
                    }
                });
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
            }else{
                alert("非法访问！");
                top.location='index.jsp';
            }
        }
    }
    function getStr(str){
        if(str==null){
            return "";
        }
        return str;
    }
    //上一页
    $("#prePageBtn").click(function(){

        var currentPage = Number($("#currentPage").text())-1;
        if(currentPage == 0){
            currentPage = 1;
            alert("首页啦 ʅ（´◔౪◔）ʃ");
        }
        $("#currentPage").text(currentPage);
        show(currentPage,10,uurl.value);
    });
    //下一页
    $("#nextPageBtn").click(function(){

        var currentPage = Number($("#currentPage").text())+1;
        var totalPage = num.value;
        if(currentPage > totalPage){
            currentPage = totalPage;
            alert("最后一页啦，别点啦  (¯(∞)¯)")
        }
        $("#currentPage").text(currentPage);
        show(currentPage,10,uurl.value);
    });
    //首页
    $("#firstPageBtn").click(function(){
        var currentPage = 1;
        $("#currentPage").text(currentPage);
        show(currentPage,10,uurl.value);
    });
    //刷新
    $("#reloadBtn").click(function(){
        var currentPage = 1;
        $("#currentPage").text(currentPage);
        show(currentPage,10,'http://localhost:8081/matronlist/all');
    });
    //尾页
    $("#lastPageBtn").click(function(){
        var currentPage = num.value;
        $("#currentPage").text(currentPage);
        show(currentPage,10,uurl.value);
    });
    function ifCookie(c_name) {
        if(document.cookie.length > 0) {
            c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
            if(c_start != -1) {
                return true;
            }
            return false;
        }
    }
    function sleep(n) {
        var start = new Date().getTime();
        //  console.log('休眠前：' + start);
        while (true) {
            if (new Date().getTime() - start > n) {
                break;
            }
        }
        // console.log('休眠后：' + new Date().getTime());
    }
    function send(){
        if(ifCookie("TT_TOKEN")){
            sleep(1000);
            var datas = {
                paper : $("#paper").val(),
                userid : userid.value
            };
            var url = "http://localhost:8080/matroncheck/add";
            $.ajax({
                url: url,
                type: "GET",
                data:datas,
                dataType: "jsonp", //指定服务器返回的数据类型
                jsonpCallback: "jsonpCallback",
                contentType:'application/json;charset=UTF-8',
                success: function (data) {
                    var json = eval(data);
                    alert(json.msg);
                }
            });
        }else{
            alert("请登陆");
        }
    }
</script>
</body>

</html>