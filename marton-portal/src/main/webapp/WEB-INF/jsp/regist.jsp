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
<link rel="stylesheet" href="${path}/css/index2.css" />
</head>

<body>
<img src="/images/baby4.jpg" class="bgImg" />
<div class="content">
	<div class="bidTitle">注 册</div>
	<div class="logCon">
		<div class="line"><span>用户名:</span>
			<input class="username" type="text" />*</div>
		<div class="line"><span>密码:</span>
			<input class="password" type="text" />*</div>
		<div class="line"><span>名字:</span>
			<input class="name" type="text" />*</div>
		<div class="line"><span>昵称:</span>
			<input class="nickname" type="text" />*</div>
		<div class="line"><span>手机:</span>
			<input class="phone" type="text" />*</div>
		<div class="line"><span>邮箱:</span>
			<input class="email" type="text" />*</div>
		<button type="button" class="logingBut"  onclick="login()">注册</button>
	</div>
</div>
<div style="text-align:center;">
</div></div>
<script src="${path}/plugins/jquery/dist/jquery.min.js"></script>
<script>
	//验证表单函数
	function checkForm(){
		//检查姓名是否为空
		var name=checkNotEmpty("username");
		var star=checkNotEmpty("password");
		var year=checkNotEmpty("name");
		var address=checkNotEmpty("nickname");
		var photo=checkNotEmpty("phone");
		var email=checkNotEmpty("email");
		return name&&star&&year&&address&&photo&&email;
	}
	//校验表单元素不能为空
	function checkNotEmpty(id){
		var text=$(".id").val();
		if(text=="") {
			//说明为空
			return false;
		}else{
			return true;
		}
	}
function login(){
	if(checkForm){
		var datas = {
			username : $(".username").val(),
			password : $(".password").val(),
			name : $(".name").val(),
			nickname : $(".nickname").val(),
			phone : $(".phone").val(),
			email : $(".email").val(),
		}
		$.ajax({
			type: 'POST',
			url: "http://localhost:8084/register",
			data:datas,
			dataType: "jsonp", //指定服务器返回的数据类型
			jsonp:'callback',
			jsonpCallback:"jsonpCallback",
			contentType:'application/json;charset=UTF-8',
			success: function (data) {
				var list=eval(data);
				if(list.msg=="注册成功"){
					window.location.href = 'http://localhost:8082/login.html';
				}
			}
		});
	}else{
		alert("请填写完整信息！");
		return;
	}

}
</script>
</body>
</html>