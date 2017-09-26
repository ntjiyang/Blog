<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<title>管理员登录</title>
<link rel="shortcut icon" href="resources/images/favicon.ico" />
<link href="css/adminLoginStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/admin_login.js?lang=zh"></script>
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox">
		<div class="login-content">
			<div class="loginbox-title">
				<h3>登录</h3>
			</div>
			<form id="signupForm" action="admin/adminLogin" method="post">
			<div class="login-error"></div>
			<div class="row">
				<label class="field">&nbsp;用户名</label>
				<input type="text" class="input-text-user input-click" name="adminName" id="adminName">
			</div>
			<div class="row">
				<label class="field">&nbsp;密码</label>
				<input type="password" class="input-text-password input-click" name="password" id="password">
			</div>
			<div class="row btnArea">
			<input class="login-btn" id="submit" type="submit" value="登 录">
			</div>
			<div class="row tips">
				<a href="forget.jsp" class="link">忘记密码</a>
			</div>
			</form>
		</div>
	</div>
	
<div id="footer">
	<div class="dblock">
		<div class="inline-block copyright">
			<p>Copyright © 2017 博客网</p>
		</div>
	</div>
</div>
</div>
<!-- <div class="loading">
	<div class="mask">
		<div class="loading-img">
		<img src="resources/images/loading.gif" width="31" height="31">
		</div>
	</div>
</div> -->
</body>
</html>