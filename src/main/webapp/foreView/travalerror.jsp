<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>


</head>
<body>

<center>
		<h1>登陆后才允许回复</h1>
		<b><a href="index.jsp" target="_parent">返回登录注册界面</a></b>
		<b><a href="user/blogSelectByUserId?flag=title&userId=${userid}" target="_parent">返回主页</a></b>
</center>
</body>
</html>