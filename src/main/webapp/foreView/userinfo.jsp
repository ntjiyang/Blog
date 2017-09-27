<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>

<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
 
 <style type="text/css">
 	table{margin-left: 180px}
 
 </style>
</head>
<body>
 <div id="main">
      <div id="navigation">

<table width="200px" height="200px">

<c:forEach items="${userlist}" var="ul">
<tr>
	<td>头像</td>
	<td>${ul.headImage}</td>
</tr>
<tr>
	<td>用户名：</td>
<td>${ul.userName}</td>
</tr>
<tr>
	<td>联系电话：</td>
	<td>${ul.userPhone}</td>
</tr>
<tr>
	<td>邮箱：</td>
	<td>${ul.userEmail }</td>
</tr>

<tr>
	<td>我关注的人：</td>
	<td>${ul.follow}</td>
</tr>
<tr>
	<td>关注我的人数：</td>
	<td>${ul.fans}</td>
</tr>
<tr>
	<td>个人简介</td>
	<td>${ul.userInformation}</td>
</tr>

</c:forEach>
<tr>
	<td><a href="foreView/main.jsp"><input type="button" value="首页"/></a></td>
</tr>
</table>


</div>
</div>
</body>
</html>