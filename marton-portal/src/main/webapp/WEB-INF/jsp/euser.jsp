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
    </style>
</head>

<body class="body-wrapper">

    <div>
        <div>
            <div>
                <form role="form" id="editForm" method="post">
                    <div class="box-body">
                        <input type="hidden" class="form-control" name="id">
                        <input type="hidden" class="form-control" name="ismatron">
                        <input type="hidden" class="form-control" name="username">
                        <input type="hidden" class="form-control" name="permissionid">
                        <div class="form-group col-md-3" style="padding-left:0">
                            <label for="name" class="text-red">名字</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="form-group col-md-3" style="padding-left:0">
                            <label for="nickname" class="text-red">昵称</label>
                            <input type="text" class="form-control" id="nickname" name="nickname">
                        </div>
                        <div class="form-group col-md-3" style="padding-left:0">
                            <label for="pass" class="text-red">密码</label>
                            <input type="text" class="form-control" id="pass" name="pass">
                        </div>
                        <div class="form-group col-md-3" style="padding-left:0">
                            <label for="phone"  class="text-red">手机</label></br>
                            <input type="text" class="form-control" id="phone" name="phone">
                        </div>
                        <div class="form-group col-md-3" style="padding-left:0">
                            <label for="email"  class="text-red">邮箱</label></br>
                            <input type="text" class="form-control" id="email" name="email">
                        </div>


                    </div>
                    <!-- /.box-body -->
                </form>
            </div>
            <!-- /.box-body -->
        </div>
    </div>
    <div class="modal-footer">
        <button id="addbutton" type="button" class="btn btn-default pull-right" data-dismiss="modal">提交</button>
        <button id="closebutton" type="button" class="btn btn-default pull-right" data-dismiss="modal">关闭</button>
    </div>

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
    getCookie("TT_TOKEN");
    function getCookie(c_name) {
        if(document.cookie.length > 0) {
            c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
            if(c_start != -1) {
                c_start = c_start + c_name.length + 1;//获取值的起点
                c_end = document.cookie.indexOf(";", c_start);//获取结尾处
                if(c_end == -1) c_end = document.cookie.length;//如果是最后一个，结尾就是cookie字符串的结尾
                var urll = "http://localhost:8084/token/"+decodeURI(document.cookie.substring(c_start, c_end));//截取字符串返回
                $.ajax({
                    url: urll,
                    type: "GET",
                    dataType: "jsonp", //指定服务器返回的数据类型
                    jsonpCallback: "jsonpCallback",
                    success: function (data) {
                        var list=eval(data);
                        $("#editForm :input[name='id']").val(list.id);
                        $("#editForm :input[name='name']").val(list.name);
                        $("#editForm :input[name='nickname']").val(list.nickname);
                        $("#editForm :input[name='username']").val(list.username);
                        $("#editForm :input[name='pass']").val(list.pass);
                        $("#editForm :input[name='password']").val(list.password);
                        $("#editForm :input[name='ismatron']").val(list.ismatron);
                        $("#editForm :input[name='phone']").val(list.phone);
                        $("#editForm :input[name='email']").val(list.email);
                        $("#editForm :input[name='permissionid']").val(list.permissionid);
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
    $("#addbutton").click(function(){
        //验证表单
        if (checkForm()) {
            var user=$('#editForm').serializeObject();
            alert(JSON.stringify(user));
            $.ajax({
                url: "http://localhost:8082/updateuser.html",
                type: "POST",
                data: JSON.stringify(user),
                dataType:"json",
                contentType:'application/json;charset=UTF-8',
                success: function (data) {
                    var json = eval(data);
                    alert(json.msg);
                    window.location.href="http://localhost:8082/matronlist.html";
                },
                error: function (data) {
                    alert(json.msg);
                }
            });
        }else{
            alert("表单中必填选项的内容不能为空！");
        }

    });
    $.fn.serializeObject = function(){
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };
    $("#closebutton").click(function(){
        window.location.href="http://localhost:8082/matronlist.html";
    });
    //验证表单函数
    function checkForm(){
        //检查姓名是否为空
        var name=checkNotEmpty("name");
        //检查姓名是否为空
        var nickname=checkNotEmpty("nickname");
        var password=checkNotEmpty("pass");
        var phone=checkNotEmpty("phone");
        var email=checkNotEmpty("email");
        return name&&nickname&&password&&phone&&email;
    }
    //校验表单元素不能为空
    function checkNotEmpty(id){
        var text=$("#id").val();
        if(text=="") {
            //说明为空
            return false;
        }else{
            return true;
        }
    }
</script>
</body>
</html>