<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<!--Needed for the prettyPhoto to function-->
<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"
	type="text/javascript"></script>
<!--runs the tabs widgets and toggle widgets-->
<script type="text/javascript" src="js/simplepager.js"></script>
<!--runs the pagination-->
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
td {
	vertical-align: top;
}
</style>
<script type="text/javascript">
	function check() {
		var type = document.getElementById("type").value;
		var title = document.getElementById("title").value;
		var content = document.getElementById("content").value;

		if (type == '' || title == '' || content == '') {
			alert("请输入正确内容");
			return false;
		}
		return true;
	}

	function checkMsg(obj) {
		//获取输入文本域的长度
		if (obj.value.length > 5000) {
			alert("输入内容的长度不能大于5000个字符");
			obj.value = obj.value.substring(0, 5000);
		}
	}
</script>
<style type="text/css">
textarea {
	font-size: 18px
}
</style>
</head>
<body>
	<div id="main">
		<div id="main-content">
			<div class="post">
				<center>
					<form
						action="admin/addNotification?notiadminId=${sessionScope.adminpower }&flag=add"
						method="post" onsubmit="return check()">

						<table border="0" width="600px" height="150px" cellspacing="0">
							<tr height="30">
								<td width="200px" style="text-indent: 10px"><font
									color="#004790"><b>■发送通知</b></font></td>
							</tr>
							<tr>
								<td align="center">
									<table border="0" width="600px" cellspacing="8">
										<tr>
											<td style="text-indent: 10" width="60px">用户名：</td>
											<td colspan="2"><input type="text" name="userName"
												size="50" maxlength="40" value="${user.userName }"
												id="title" /></td>
										</tr>
										<tr>
											<td style="text-indent: 10">通知标题：</td>
											<td colspan="2"><input type="text"
												name="notificationTitle" size="50" maxlength="40"
												value="推送通知" id="title" /></td>
										</tr>
										<tr>
											<td style="text-indent: 10">通知内容：<br></td>
											<td colspan="2"><textarea name="notificationContent"
													cols="55" rows="20" id="content" onkeyup="checkMsg(this)"></textarea></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr align="center" height="50">
								<td><input type="submit" id="info_Add_action_0"
									value="&#21457;&#24067;" /> <input type="reset"
									value="&#37325;&#22635;" /></td>
							</tr>
						</table>
					</form>
				</center>
			</div>
		</div>
	</div>
</body>
</html>
