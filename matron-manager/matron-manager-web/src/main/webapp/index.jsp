<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/jstl.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>月嫂</title>
    <style>
        .updata {
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 9999;
            background: rgba(0, 0, 0, 0.5);
            display: none;
        }

        .passbox {
            width: 300px;
            height: 150px;
            border: 1px solid #000;
            background: #fff;
            margin: 100px auto 0;
        }

        .pass {
            width: 85%;
            margin: 30px auto 20px;
            display: block;
        }

        .btna {
            width: 85%;
            margin: 0 auto;
        }

        .sure,
        .notsure {
            width: 100px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            border: 1px solid #555;
            margin: 0 12px;
        }
    </style>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="${pageContext.request.contextPath}/adminlte/bower_components/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${path}/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${path}/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${path}/adminlte/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${path}/adminlte/dist/css/AdminLTE.min.css">
    <!-- Morris charts -->
    <link rel="stylesheet" href="${path}/adminlte/bower_components/morris.js/morris.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
    page. However, you can choose any other skin. Make sure you
    apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="${path}/adminlte/dist/css/skins/skin-blue.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font
<link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="updata" id="updata">
    <div class="passbox">
        <input type="text" placeholder="请输入密码" class="pass" id="pass" />
        <p class="btna"><button class="sure" onclick="sure()">确定</button><button class="notsure" id="notsure" onclick="closebox()">取消</button></p>
    </div>
</div>
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">月嫂</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">月嫂</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="${path}/adminlte/dist/img/timg.jpg" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">黄禹铭</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="${path}/adminlte/dist/img/timg.jpg" class="img-circle" alt="User Image">

                                <p>
                                    <big><span style="color: #0a0a0a"><b>黄禹铭</b></span></big>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <input type="submit" class="btn btn-default btn-flat" name="Submit3" value="修改密码" onclick="prom()" />
                                </div>
                                <div class="pull-right">
                                    <a href="logout" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="active"><a href="/"><i class="fa fa-home"></i> <span>首页</span></a></li>
                <li class="treeview ">
                    <a href="#"><i class="fa fa-tasks"></i> <span>月嫂信息</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu ">

                        <li onclick="changeMain(this,'matronlist',{})"><a href="#"><i class="fa fa-circle-o"></i>月嫂展示列表</a></li>
                        <li onclick="changeMain(this,'matrondetail',{})"><a href="#"><i class="fa fa-circle-o"></i>月嫂详情介绍</a></li>
                        <li onclick="changeMain(this,'indent',{})"><a href="#"><i class="fa fa-circle-o"></i>订单管理</a></li>
                        <li onclick="changeMain(this,'matronchecklist',{})"><a href="#"><i class="fa fa-circle-o"></i>月嫂考核信息</a></li>
                    </ul>
                </li>
                <li class="treeview ">
                    <a href="#"><i class="fa fa-tasks"></i> <span>用户管理</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li onclick="changeMain(this,'userlist',{})"><a href="#"><i class="fa fa-circle-o"></i>用户列表</a></li>

                    </ul>
                </li>
                <li class="treeview">
                    <a href="#"><i class="fa fa-user"></i> <span>交流区</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li onclick="changeMain(this,'answerlist',{})"><a href="#"><i class="fa fa-circle-o"></i>回答管理</a></li>
                        <li onclick="changeMain(this,'questionlist',{})"><a href="#"><i class="fa fa-circle-o"></i>问题管理</a></li>
                    </ul>
                </li>


                <li class="treeview">
                    <a href="#"><i class="fa fa-group"></i> <span>推送管理</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
                    </a>
                    <ul class="treeview-menu">
                        <li onclick="changeMain(this,'matronfw',{})"><a href="#"><i class="fa fa-circle-o"></i>月嫂服务</a></li>
                        <li onclick="changeMain(this,'fwflow',{})"><a href="#"><i class="fa fa-circle-o"></i>服务流程</a></li>
                        <li onclick="changeMain(this,'charges',{})"><a href="#"><i class="fa fa-circle-o"></i>收费标准</a></li>
                    </ul>
                </li>
            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div id="main">
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <img src="${path}/adminlte/dist/img/welcome.jpg" >
                <ol class="breadcrumb">
                    <li><a href="/"><i class="fa fa-circle-o"></i>首页</a></li>
                </ol>
            </section>
        </div>
    </div>

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            matron
        </div>
        <!-- Default to the left -->
        禹铭制作
    </footer>

    <!-- Add the sidebar's background. This div must be placed
immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script type="text/javascript" src="adminlte/bower_components/jquery/dist/jquery.min.js"></script>
<script src="adminlte/bower_components/jquery-ui/jquery-ui.js"></script>
<script src="adminlte/bower_components/jquery-ui/ui/i18n/datepicker-zh-CN.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- echarts -->
<script src="adminlte/dist/js/echarts.common.min.js"></script>
<!-- FastClick -->
<script src="adminlte/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="adminlte/dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
Both of these plugins are recommended to enhance the
user experience. -->

<script type="text/javascript">
    function getMyName() {
        var myName = "<%=session.getAttribute("MYNAME ")%>";
        alert(myName);
    }

    function prom() {
        /* var name=prompt("请输入新密码","");//将输入的内容赋给变量 name ， */
        //这里需要注意的是，prompt有两个参数，前面是提示的话，后面是当对话框出来后，在对话框里的默认值
        $('#updata').css('display', 'block')
    }

    function closebox() {
        $('#updata').css('display', 'none')
    }

    function sure() {
        var a = $('#pass').val();
        console.log(a);
        $.ajax({
            url: "${pageContext.request.contextPath}/user/updatePassword",
            type: "GET",
            data: {
                "password": a
            },
            dataType: "json",
            success: function(data) {
                var json = eval(data);
                alert(json.msg);
                window.location.reload();
            },
            error: function(data) {
                alert(json.msg);
            }
        });
    }

    function changeMain(obj, url, info) {
        $(obj).addClass("active");
        //console.log($(obj));
        $.post(url, info, function(html) {
            $("#main").html(html);
        }, 'html');
    }
</script>
</body>

</html>