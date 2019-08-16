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
<meta charset="UTF-8">
<title>月嫂</title>
<link rel="stylesheet" href="${path}/css/index.css" />
</head>

<body>
<img src="/images/bgImg1.jpg" class="bgImg" />
<div class="content">
	<div class="bidTitle">月嫂登录</div>
	<div class="logCon">
		<div class="line"><span>账号:</span>
		<input class="username" type="text" /></div>
		<div class="line"><span>密码:</span>
		<input class="password" type="password" /></div>
		<button type="button" class="logingBut" onclick="login()">登录</button>
	</div>
</div>
<div style="text-align:center;">
</div>
<script src="${path}/plugins/jquery/dist/jquery.min.js"></script>
<script>
function login(){
    var datas = {
        username : $(".username").val(),
        password : $(".password").val()
    }
	$.ajax({
        type: 'POST',
		url: "http://localhost:8084/login",
        data:datas,
		dataType: "jsonp", //指定服务器返回的数据类型
        jsonp:'callback',
		jsonpCallback:"jsonpCallback",
		contentType:'application/json;charset=UTF-8',
		success: function (data) {
            var list=eval(data);
            if(list.msg=="登陆成功"){
				window.location.href = 'http://localhost:8082';
			}
		}
	});
}
</script>
</body>
</html>