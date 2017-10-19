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

<form action="user/userUpdate" method="post">
<table width="400px" height="200px">

<c:forEach items="${userlist}" var="ul">
<tr>
	<th>	
		
           <span id="logo"><img src="images/big2.jpg" alt="period" height="80px" width="80px" /></span>
   	
    </th>
</tr>
<tr>
	<td>用户名：</td>
<td><input type="text" name="userName" readonly="readonly" value="${ul.userName}" /></td>
</tr>
<tr>
	<td>密 码：</td>
	<td><input name="password" type="password" value="${ul.password}"/></td>
</tr>
<tr>
	<td>联系电话：</td>
	<td>${ul.userPhone}</td>
</tr>

<tr>
	<td>邮箱：</td>
	<td>${ul.userEmail}</td>
</tr>
<tr>
	<td>个人简介</td>
	<td>
	<textarea id="content" name="userInformation" style=" width:300px; height:100px; resize:none;">${ul.userInformation}</textarea></td>
</tr>


<tr>
	<td><input type="submit" value="提交"/></td>
	<td><a href="user/blogSelectByUserId?flag=0&userId=${userid}"><input type="button" value="返回个人中心"/></a></td>
</tr>
</c:forEach>
</table>
</form>

</div>
</div>
</body>
</html>