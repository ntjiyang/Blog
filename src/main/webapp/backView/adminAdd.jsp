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
	function powercheck(flag) {
		var pow = "${sessionScope.adminpower}";
		var oldPow = 1;
		var newPow = $("#power").val();
		var upId = "${a.adminId}";
		if (isNaN(newPow)) {
			alert("请输入数字！");
			$("#power").val(pow);
		} else {
			if (parseInt(newPow) >= parseInt(pow) || parseInt(newPow) <= 0) {
				alert("权限不够！");
				$("#power").val(oldPow);
			}
		}
		if (flag == 1) {
			window.location.href = "admin/adminUpdate?adminPower=" + newPow
					+ "&adminId=" + upId + "";
		}
	}

	var isOk = true;
	function checkEmail(obj) {
		var StrReg = "";
		var r;
		var StrText = obj.value;
		StrReg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		r = StrText.search(StrReg);
		if (r == -1) {
			alert("邮箱格式错误！");
			isOk = false;
		} else {
			isOk = true;
		}
	}
	function checkPhone(obj) {
		var StrReg = "";
		var r;
		var StrText = obj.value;
		StrReg = /^(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/;
		r = StrText.search(StrReg);
		if (r == -1) {
			alert("手机号码格式错误！");
			isOk = false;
		} else {
			isOk = true;
		}
	}

	function check() {
		var flag = true;
		if ($("#adminName").val() == null || $("#adminName").val() == "") {
			flag = false;
		}
		if ($("#password").val() == null || $("#password").val() == "") {
			flag = false;
		}
		if ($("#adminPhone").val() == null || $("#adminPhone").val() == "") {
			flag = false;
		}
		if ($("#adminEmail").val() == null || $("#adminEmail").val() == "") {
			flag = false;
		}
		if ($("#power").val() == null || $("#power").val() == "") {
			flag = false;
		}
		if (flag == false) {
			alert("请将信息填写完整！");
			return false;
		}
		if (isOk == false) {
			alert(" 信息格式错误！");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<div id="main">
		<div id="main-content">
			<div class="post">
				<form action="admin/adminAdd" target="main" method="post"
					onsubmit="return check()">
					<table width="200px" height="200px">
						<tr>
							<td width="50%">用户名：</td>
							<td><input id="adminName" size="15" type="text" name="adminName" /></td>
						</tr>
						<tr>
							<td width="50%">密码：</td>
							<td><input id="password" size="15" type="password" name="password" /></td>
						</tr>
						<tr>
							<td>联系电话：</td>
							<td><input id="adminPhone" size="15" type="text" name="adminPhone"
								onchange="checkPhone(this)" /></td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td><input id="adminEmail" size="15" type="text" name="adminEmail"
								onchange="checkEmail(this)" /></td>
						</tr>

						<tr>
							<td>权限：</td>
							<td><input size="15" id="power" type="text"
								name="adminPower" value="1" onchange="powercheck(0)" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="确认提交"></td>
							<td><input type="button"
								onclick="window.location.href='admin/selectBlogByCheck?check=1'"
								value="返回首页"></td>
						</tr>
					</table>
				</form>

			</div>
		</div>
	</div>
</body>
</html>