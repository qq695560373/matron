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
        .base-info-bd {
            margin-top: 30px;
            padding-bottom: 49px;
            border-bottom: 1px solid #ececec;
        }
        element.style {
            position: relative;
            top: 0px;
        }
        .clearfix {
            zoom: 1;
        }
        .info-item-bd {
            padding-top: 40px;
        }
        .navbar-wrapper {
            width: 1200px;
            height: 48px;
            margin-bottom: 28px;
            background: #f5f5f5;
            z-index: 5;
        }
        .base-info-bd .left, .base-info-bd .middle, .base-info-bd .right {
            float: left;
        }

        .base-info-bd .left img {
            width: 200px;
            height: 200px;
        }
        .dj-info-list .cont .boutique, .base-info-bd .left .boutique {
            background: url(../images/boutique.png) no-repeat;
            position: absolute;
            top: -10px;
            left: -14px;
            width: 56px;
            height: 70px;
            z-index: 6;
            overflow: hidden;
            text-indent: -9999px;
        }
        .base-info-bd .middle {
            width: 608px;
            margin-left: 42px;
        }
        .middle .m1 {
            position: relative;
            height: 28px;
        }
        .middle .m1 .name {
            position: absolute;
            left: 0;
            display: block;
            overflow: hidden;
            font-size: 22px;
            color: #292d33;
        }
        .middle .m1 .level {
            width: auto;
            height: 28px;
            display: block;
            line-height: 33px;
            margin-left: 110px;
            font-size: 14px;
            color: #848c99;
            padding-left: 38px;
            position: relative;
            background: none;
        }
        .middle .m1 .level .level4 {
            background-position: 0 -110px;
        }
        .middle .m2 {
            margin-top: 9px;
            color:#880000;
        }
        .middle .m3 {
            overflow: hidden;
            margin-top: 10px;
        }
        .middle .m4 {
            width: 608px;
            height: 55px;
            background: #f5f5f5;
            margin-top: 16px;
            padding-top: 3px;
        }
        .middle .m4 .payroll {
            font-size: 14px;
            color: #292d33;
            padding-left: 38px;
            margin-top: 3px;
        }
        .middle .m4 .payroll strong {
            font-size: 28px;
            color: #e6454a;
        }
        .middle .m5 .btn:hover {
            background: #c4383B;
        }
        .middle .m5 .btn {
            display: block;
            float: left;
            background: #e6454a;
            border: 1px solid #e6454a;
            font-size: 18px;
            color: #fff;
            height: 48px;
            line-height: 48px;
            padding: 0;
        }
        a:hover {
            color: #e6454a;
        }
        .btn {
            width: 163px;
            -moz-user-select: none;
            background-image: none;
            border: 1px solid transparent;
            cursor: pointer;
            display: inline-block;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857;
            margin-bottom: 0;
            padding: 6px 0;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
        }
        ol, ul {
            list-style: none;
        }
        .navbar-wrapper .menuItem.active {
            color: #e6454a;
            float: left;
        }
        .navbar-wrapper .menuItem {
            height: 48px;
            line-height: 48px;
            float: left;
        }
        .info-item-bd {
            padding-top: 40px;
        }
        .navbar-wrapper .menuItem a {
            line-height: 20px;
            padding: 14px 27px 14px 18px;
            font-size: 18px;
            color: #292d33;
        }

        .navbar-wrapper .menuItem a span {
            font-size: 14px;
            color: #848c99;
            margin-left: 8px;
        }

        .navbar-wrapper .menuItem.active a,
        .navbar-wrapper .menuItem.active span {
            color: #e6454a;
        }
        .box .box-bd {
            padding-top: 30px;
        }
        .box .box-head {
            position: relative;
            height: 40px;
            border-bottom: 1px solid #f5f5f5;
        }
        .box .box-head h2 {
            min-width: 90px;
            _width: 90px;
            position: absolute;
            bottom: 0;
            font-size: 18px;
            color: #292d33;
            padding-bottom: 16px;
            border-bottom: 2px solid #e6454a;
            padding-left: 18px;
            padding-right: 18px;
        }
        .box .box-bd .left-inner {
            width: 374px;
        }
        .box .box-bd .items li {
            margin-bottom: 23px;
            float: left;
            width: 100%;
        }
        .box .box-bd .right-inner {
            width: 819px;
        }
        .box .box-bd .items {
            float: left;
        }
        .items label {
            font-size: 15px;
            color: #848c99;
            float: left;
        }
        .clearfix:after {
            content: "";
            display: block;
            clear: both;
            visibility: hidden;
            overflow: hidden;
        }
        .skill-1 {
            border: 1px solid #ececec;
            padding: 1px;
            width: 298px;
            overflow: hidden;
            height: 485px;
            -webkit-box-shadow: 2px 2px 2px rgba(230, 230, 230, .4);
            -moz-box-shadow: 2px 2px 2px rgba(230, 230, 230, .4);
            box-shadow: 2px 2px 2px rgba(230, 230, 230, .4);
        }
        .skill-1 .skill-icon {
            width: 298px;
            height: 154px;
            position: relative;
        }
        .skill-1 .skill-1-ul {
            width: 360px;
            padding: 11px 0 0 15px;
        }
        .skill-1 .skill-icon .t {
            background: url(/images/icon1.png) no-repeat;
            width: 74px;
            height: 58px;
            position: absolute;
            left: 0;
            top: 0;
            text-indent: -9999px;
            overflow: hidden;
        }
        .skill-icon .p1 {
            position: absolute;
            left: 0;
            bottom: 0;
            height: 36px;
            width: 100%;
            color: #fff;
            line-height: 36px;
            text-align: center;
            font-size: 18px;
            background: rgba(0, 0, 0, 0.4) 0 0;
            background: #000 \9;
            filter: alpha(opacity=10) \9;
            -moz-opacity: 10 \9;
            -khtml-opacity: 10 \9;
            opacity: 10 \9;
        }
        .skill-1 .skill-1-ul li, .skill-2 .skill-1-ul li {
            width: 148px;
            float: left;
            background: url(/images/icon.gif) no-repeat 0 -53px;
            padding-left: 19px;
            margin-top: 16px;
            font-size:13px;
        }
        .skill-1 .skill-1-ul li.yes {
            background-position: 0 5px;
        }.skill-1 .skill-1-ul li.yes {
             background-position: 0 5px;
         }
        .fl {
            float: left;
        }
        .skill-2 {
            width: 258px;
            margin-left: 37px;
            display: inline;
        }
        .skill-2 .skill-icon {
            width: 258px;
        }
        .skill-2 .skill-1-ul li.yes {
            background-position: 0 -24px;
        }
        .skill-2 .skill-1-ul li {
            width: 200px;
            padding-left: 30px;
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
    <!-- Container Start -->
    <div class="base-info-bd clearfix">
        <div class="left">
            <img src="${item.photo}" width="200" height="200" alt="">
            <span class="boutique">精品</span>
        </div>
        <div class="middle">
            <div class="m1">
                <span class="name">${item.name}</span>
                <div class="level">
                    <i class="level-icon level4"></i> ${item.star}
                </div>
            </div>
            <div class="m2">
                <span class="label"><strong>${item.year}</strong></span>
                <span class="seperate">|</span>
                <span class="label"><strong>${item.address}</strong></span>
            </div>
            <div class="m3">
                <span class="tag">${item.sign}</span>
            </div>
            <div class="m4">
                <p class="payroll">薪资：<strong>${item.price}</strong>元/26天

                    <span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span>
                    <span><strong>${item.evaluation}</strong></span>

                </p>
            </div>
            <div class="m5">
                <a class="btn js-open-order-dialog" data-id="${item.id}" data-desc="${item.name}" onclick="change(1)">
                    预约面试
                </a>
            </div>
        </div>
        <div class="right passport-con">
        </div>
    </div>


    <div class="info-item-bd">
        <div class="navbar-wrapper stuckMenu" style="position: relative;">
            <div class="container">
                <ul class="clearfix">
                    <li class="menuItem active"><a href="#base-info">基本资料</a></li>
                    <li class="menuItem"><a href="#schedule">工作排期表</a></li>
                    <!-- <li class="menuItem"><a href="#experience">培训经历</a></li> -->
                    <li class="menuItem"><a href="#skill">技能</a></li>
                    <li class="menuItem"><a href="#grading">资格认证</a></li>
                    <li class="fl-btn">
                </ul>
            </div>
        </div>
        <div class="box base-info" id="base-info" style="margin-top: 0px;">
            <div class="box-head">
                <h2>基本资料</h2>
            </div>
            <div class="box-bd clearfix">
                <ul class="items left-inner">
                    <li>
                        <label>身份证号：</label>
                        <span>${item.idcard}</span>
                    </li>
                    <li>
                        <label>服务类别：</label>
                        <span> 月嫂</span>
                    </li>
                    <li>
                        <label>服务城市：</label>
                        <span>广州</span>
                    </li>
                    <li>
                        <label>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>
                        <span>${item.year}</span>
                    </li>
                    <li>
                        <label>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</label>
                        <span>${item.culture}</span>
                    </li>
                    <li>
                        <label>籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯：</label>
                        <span>${item.address}</span>
                    </li>
                </ul>
                <ul class="items right-inner">
                    <li>
                        <label>民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族：</label>
                        <span>${item.nation}</span>
                    </li>
                    <li>
                        <label>婚姻状态：</label>

                            <c:if test="${item.marriage==0}">
                                <span>已婚</span>
                             </c:if>
                            <c:if test=" ${item.marriage==1}">
                                <span>未婚</span>
                            </c:if>

                    </li>
                    <li>
                        <label>服务经验：</label>
                        <span>${item.exp}</span>
                    </li>
                    <li>
                        <label>已有证件：</label>
                        <span>
                            ${item.papers}
					</span>
                    </li>
                    <li>
                        <label>综合评价：</label>
                        <span>${item.evaluation}
					 </span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="box experience-info" id="skill">
            <div class="box-head">
                <h2>掌握技能</h2>
            </div>
            <div class="box-bd clearfix">
                <div class="skill-1 clearfix fl">
                    <div class="skill-icon">
                        <img src="https://static.daojia.com/changsha/website-m/website-pc/home/3.0.0/images/detail/skill-1.jpg?v=201811071456">
                        <p class="t">产妇护理</p>
                        <p class="p1">产妇护理</p>
                    </div>
                    <ul class="skill-1-ul">
                        <li class="yes">生活护理</li>
                        <li class="yes">基础月子餐</li>
                        <li class="yes">常规形体恢复</li>
                        <li class="yes">家常点心制作</li>
                        <li class="yes">基础膳食</li>
                        <li class="yes">足浴</li>
                        <li class="yes">瑜伽形体恢复</li>
                        <li class="yes">膳食调补方案</li>
                        <li class="yes">肩颈头部放松</li>
                        <li class="yes">子宫复旧</li>
                        <li class="yes">浮肿、背部酸痛调理</li>
                        <li>卵巢保养</li>
                        <li>产后失眠调理</li>
                        <li>满月发汗</li>
                        <li>产后抑郁疏导</li>
                    </ul>
                </div>
                <div class="skill-1 skill-2 clearfix fl">
                    <div class="skill-icon">
                        <img src="https://static.daojia.com/changsha/website-m/website-pc/home/3.0.0/images/detail/skill-2.jpg?v=201811071456">
                        <p class="t">宝宝护理</p>
                        <p class="p1">宝宝护理</p>
                    </div>
                    <ul class="skill-1-ul">
                        <li class="yes">生活护理</li>
                        <li class="yes">健康观察</li>
                        <li class="yes">新生儿喂养</li>
                        <li class="yes">常见疾病观察及护理</li>
                        <li class="yes">睡眠习惯纠正</li>
                        <li>早产儿、双胞胎喂养</li>
                        <li>新生儿营养方案</li>
                        <li>小儿推拿</li>
                    </ul>
                </div>
                <div class="skill-1 skill-2 skill-3 clearfix fl">
                    <div class="skill-icon">
                        <img src="https://static.daojia.com/changsha/website-m/website-pc/home/3.0.0/images/detail/skill-3.jpg?v=201811071456">
                        <p class="t">宝宝早教</p>
                        <p class="p1">宝宝早教</p>
                    </div>
                    <ul class="skill-1-ul">
                        <li class="yes">初级体能发育指导</li>
                        <li class="yes">感官发育指导</li>
                        <li class="yes">大运动能力培养</li>
                        <li class="yes">早期音乐能力培养</li>
                        <li class="yes">家庭阅读环境创设</li>
                        <li>早期阅读能力培养</li>
                        <li>精细动作培养</li>
                    </ul>
                </div>
                <div class="skill-1 skill-2 skill-4 clearfix fl">
                    <div class="skill-icon">
                        <img src="https://static.daojia.com/changsha/website-m/website-pc/home/3.0.0/images/detail/skill-4.jpg?v=201811071456">
                        <p class="t">乳房/母乳问题</p>
                        <p class="p1">乳房/母乳问题</p>
                    </div>
                    <ul class="skill-1-ul">
                        <li class="yes">促进母乳喂养</li>
                        <li class="yes">乳腺管经络疏通</li>
                        <li class="yes">乳房常见问题处理</li>
                        <li class="yes">母乳不足辩证施治</li>
                        <li class="yes">回奶及膳食调理</li>
                        <li>奶涨施治</li>
                        <li>乳房恢复保养</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<div id='inputboxs' class="boxss">
    <a class='x' href=''; onclick="change(0); return false;">关闭</a>
    <label for="phone" class="text-red" style="font-size: 25px">手机</label>
    <input type="text" class="form-control" id="phone" name="phone"><br>
    <label for="address" class="text-red" style="font-size: 25px">地址</label>
    <input type="text" class="form-control" id="address" name="address">
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
                    <img src="/images/logo.png" alt="">
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
                                "<div class=\"item-1\"> <p class=\"intr-1\"><i class=\"big-size\"><a href=\""+"www.baidu.com"+"\">"+obj.name+"</a></i>"+
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
    function tel(){
        alert("13800138000");
    }
    function us(){
        var p = "本项目由黄禹铭制作";
        alert(p);
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
    function change(n){
        if(ifCookie("TT_TOKEN")){
            document.getElementById('inputboxs').style.display=n?'block':'none';     /* 点击按钮打开/关闭 对话框 */
        }else{
            alert("请登陆");
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
        sleep(1000);
        var datas = {
            phone : $("#phone").val(),
            address : $("#address").val(),
            userid : userid.value,
            matronid : ${item.id}
        };
        var url = "http://localhost:8080/subscribe/add";
        $.ajax({
            url: url,
            type: "GET",
            data:datas,
            dataType: "jsonp", //指定服务器返回的数据类型
            jsonpCallback: "jsonpCallback",
            contentType:'application/json;charset=UTF-8',
            success: function (data) {
                var json = eval(data);
                alert("预约成功");
                document.getElementById('inputboxs').style.display='none';
            }
        });
    }
</script>
</body>

</html>