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
 			<h1>你需要登录后</h1>
 			<a href="index.jsp" target="_parent">返回登录界面</a>
 			<a href="user/blogSelectByUserId?flag=title&userId=${userid}">返回主页</a>
 	</center>
</body>
</html>