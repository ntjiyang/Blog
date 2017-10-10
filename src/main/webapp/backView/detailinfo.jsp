<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>

<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<style type="text/css">
table {
	margin-left: 180px
}
</style>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	function powercheck() {
		var pow = "${sessionScope.adminpower}";
		var newPow = $("#power").val();
		if(isNaN(newPow)){
			alert("请输入数字！");
			$("#power").val(pow);
		}else{
			if (parseInt(newPow) > parseInt(pow)|| parseInt(newPow)< 0) {
				alert("权限不够！");
				$("#power").val(pow);
			}
		}
	}
</script>
</head>
<body>
	<div id="main">
		<div id="main-content">

			<table width="200px" height="200px">

				<c:if test="${flag == 'user'}">
					<tr>
						<td>头像</td>
						<td>${u.headImage}</td>
					</tr>
					<tr>
						<td>用户名：</td>
						<td>${u.userName}</td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td>${u.userPhone}</td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td>${u.userEmail }</td>
					</tr>

					<tr>
						<td>关注：</td>
						<td>${u.follow}</td>
					</tr>
					<tr>
						<td>听众：</td>
						<td>${u.fans}</td>
					</tr>
					<tr>
						<td>个人简介：</td>
						<td>${u.userInformation}</td>
					</tr>
				</c:if>
				<c:if test="${ flag == 'admin'}">
					<tr>
						<td>用户名：</td>
						<td>${a.adminName}</td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td>${a.adminPhone}</td>
					</tr>
					<tr>
						<td>邮箱：</td>
						<td>${a.adminEmail }</td>
					</tr>

					<tr>
						<td>权限：</td>
						<td><input id="power" type="text" name="adminName"
							value="${a.adminPower}" onchange="powercheck()" /></td>
					</tr>
				</c:if>

			</table>


		</div>
	</div>
</body>
</html>