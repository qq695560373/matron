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
        tr {
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
        }
        more-list {
            padding-bottom: 15px;
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
        }
        .wra-left {
            width: 827px;
            overflow: hidden;
            margin-left: 25px;
        }
        .fl {
            float: left;
        }
        .hot-topic .title {
            font-size: 22px;
            color: #e6454a;
            margin-top: 48px;
        }
        .hot-topic .intrs {
            margin-top: 10px;
        }
        .hot-answers .title {
            font-size: 22px;
            color: #20c6d5;
            margin-top: 47px;
        }
        tbody {
            display: table-row-group;
            vertical-align: middle;
            border-color: inherit;
        }
        tr {
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
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
        .feed {
            width: 78px;
            height: 84px;
            padding: 6px 3px 0;
            border: solid 1px #eee;
            border-radius: 4px;
            text-align: center;
            color: #20c6d5;
        }
        .info-list .info {
            width: 720px;
            border-bottom: solid 1px #eee;
            padding-bottom: 25px;
            margin-left: 20px;
        }
        .info-list .info-2 {
            color: #a7a7a7;
            margin-bottom: 4px;
        }
        .info-list .info-2 .item {
            margin-left: 10px;
        }
        .red {
            color: #e6454a;
        }
        .info-list .info-3 .intrs {
            color: #555;
            line-height: 2;
            margin-top: 17px;
            font-size: 16px;
            display: inline;
        }
        .info-list .info-4 .sub-title {
            color: #a7a7a7;
            margin-top: 18px;
        }
        .fr {
            float: right;
        }
        .clearfix:after, .clearfix:before {
            content: "";
            display: block;
            clear: both;
            visibility: hidden;
            overflow: hidden;
        }
        .bbb{
            margin-bottom: 5px;
            padding-bottom: 400px;
        }
        .boxss a{width:36px; text-decoration:none; font-size:15px; color: rgb(255,165,0); margin-left: 82%;}
        .boxss{
            position: fixed;
            z-index: 999;
            background-color: #e6e8f9;
            top:50%;
            left:50%;
            width:30%;
            height:300px;
            padding: 25px;
            border:3px #A9A9A9 solid;
            border-radius:20px;
            display: none;
            transform: translateX(-50%) translateY(-50%);
        }
        .boxss .x{ font-size:18px; text-align:right; display:block;}

        .boxss input{width:80%; font-size:28px; margin:auto; border-color:#666; margin-top:28px; border-radius:5px; display: inline-block;}

        #btnss{width:120px; background-color:#FFA500; margin:10px auto; border-radius:12px;}
        .dj-info-list {
            width: 100%;
            margin: 0 auto;
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
<section class="dashboard section">
    <div class="container">
        <!-- hot-topic start -->
        <div class="hot-topic">
            <h2 class="title">热门话题</h2>
            <div class="intrs">
                <a href="#" class="item">月嫂</a>&nbsp;&nbsp;
                <a href="#" class="item">奶粉</a>&nbsp;&nbsp;
                <a href="#" class="item">二胎</a>&nbsp;&nbsp;
                <a href="#" class="item">月子食谱</a>&nbsp;&nbsp;
                <a href="#" class="item">备孕计划</a>&nbsp;&nbsp;
                <a href="#" class="item">排卵期</a>
            </div>
        </div>
        <input type="button" value="提问" onclick="change(1)">
        <!-- hot-topic end -->
        <!-- hot-answers start-->
        <div class="hot-answers">
            <h2 class="title">问题列表</h2>
            <div class="info-list">
                <table class="table table-responsive product-dashboard-table">
                    <tbody id="tbody">
                    </tbody>
                </table>
                <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="javascript:void(0);" id="prePageBtn">&laquo;</a></li>
                        <li><a href="javascript:void(0);" id="currentPage">1</a></li>
                        <li><a href="javascript:void(0);" id="nextPageBtn">&raquo;</a></li>
                        <li><a href="javascript:void(0);" id="firstPageBtn">首页</a></li>
                        <li><a href="javascript:void(0);" id="lastPageBtn">尾页</a></li>
                        <li><a href="javascript:void(0);" id="totalPage">共0页</a></li>
                        <li><a href="javascript:void(0);" id="totalCount">总计:0条</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<div id='inputboxs' class="boxss">
    <a class='x' href=''; onclick="change(0); return false;">关闭</a>
    <label for="question" class="text-red" style="font-size: 25px">问题</label>
    <input type="text" class="form-control" id="question" name="question">
    <div style="text-align: center;">
        <input type="button" id="btnss" value="确定" onclick="send()">
    </div>
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
        value: 'http://localhost:8081/question/all'
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
                        console.log(i);
                        if(i>=(currentPage-1)*pageSize&&i<currentPage*pageSize) {
                            var obj = list[i];
                            innerHtml+="<tr class=\"more-list\">"+
                            "<td>"+
                            "<div class=\"list clearfix\">"+
                                "<div class=\"fl feed\" id=\"feed1\">"+
                                "<div class=\"item\">"+
                                "<span class=\"number\"><i class=\"likecount\">20</i>人</span><br>觉得有用"+
                            "</div>"+
                            "</div>"+
                            "<div class=\"fr info\">"+
                                "<div class=\"info-1 clearfix\">"+
                                "<a href=\"/answer/"+obj.id+".html\" class=\"fl sub-title\">"+obj.title+"</a>"+
                            "<div class=\"fr intrs\">"+
                                "<span class=\"anwer\"><i class=\"icon\"></i>"+obj.num+"个回答 </span>"+
                            "<span class=\"time\"><i class=\"icon\"></i>"+FormatDateTime(obj.time)+"</span>"+
                            "</div>"+
                            "</div>"+
                            "<div class=\"info-2\">话题 ："+
                        "<a href=\"#\" class=\"item red\">"+obj.topicid+"</a>"+
                                "</div>"+
                                "<div class=\"info-3\">"+
                            "</div>"+
                            "<div class=\"info-4 clearfix\">"+
                                "<div class=\"fl sub-title\">回答来自："+
                        "<a class=\"item \"></a>"+
                            obj.userid+"</div>"+
                            "</div>"+
                            "</div>"+
                            "</div>"+
                            "</div>"+
                            "</td>"+
                            "</tr>";
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
    function FormatDateTime(UnixTime) {
       // var a = UnixTime.replace("/Date(", "").replace(")/", "");
        var date = new Date(parseInt(UnixTime));
        var y = date.getFullYear();
        var m = date.getMonth() + 1;
        m = m < 10 ? ('0' + m) : m;
        var d = date.getDate();
        d = d < 10 ? ('0' + d) : d;
        var h = date.getHours();
        h = h < 10 ? ('0' + h) : h;
        var minute = date.getMinutes();
        var second = date.getSeconds();
        minute = minute < 10 ? ('0' + minute) : minute;
        second = second < 10 ? ('0' + second) : second;
        return y + '-' + m + '-' + d + ' ' + h + ':' + minute + ':' + second;
    };
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
    function change(n){
        if(ifCookie("TT_TOKEN")){
            document.getElementById('inputboxs').style.display=n?'block':'none';     /* 点击按钮打开/关闭 对话框 */

        }else{
            alert("请登陆");
        }
    }
    function send() {
        var datas = {
            question : $("#question").val()
        }
        $.ajax({
            url: "http://localhost:8080/question/add",
            data:datas,
            dataType: "jsonp", //指定服务器返回的数据类型
            jsonp:'callback',
            jsonpCallback:"jsonpCallback",
            contentType:'application/json;charset=UTF-8',
            success: function (data) {
                var json = eval(data);
                alert(json.msg);
                document.getElementById('inputboxs').style.display='none';
            },
            error: function (data) {
                alert(data.msg);
            }
        });

    }
</script>
</body>

</html>