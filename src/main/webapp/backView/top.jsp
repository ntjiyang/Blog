<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>
<!-- <script type="text/javascript"
	src="http://twitter.com/javascripts/blogger.js"></script> -->
<!--Needed for the twitter feed-->
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<!--Needed for the prettyPhoto to function-->
<script type="text/javascript" src="js/twitter.js"></script>
<!--needed for various things on the page. Put into a custom file instead of having a bunch of stuff in the header-->
<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"
	type="text/javascript"></script>
<!--runs the tabs widgets and toggle widgets-->
<script type="text/javascript" src="js/simplepager.js"></script>
<!--runs the pagination-->
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />

<script type="text/javascript">
	$(document).ready(function() {
		$('span.category').hover(function() {
			$(this).next().css('background-color', '#e25050');
		}, function() {
			$(this).next().css('background-color', '#393939');
		});

		$(".pageing").quickPager({
			pageSize : 5,
		});
	});
	
	function check() {
		var pow = "${sessionScope.adminpower}";
		if (parseInt(pow) < 2) {
			alert("权限不够！");
		} else {
			window.top.frames['main'].location.href="backView/adminAdd.jsp";
		}
	}
</script>

<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div id="main">
		<div id="navigation">
			<ul style="float: left;margin-left: 40px;">
				<li><a class="active" href="admin/selectBlogByCheck?check=1" target="main">主页</a></li>
				<li><a href="admin/selectBlogByCheck?check=1" target="main">博客</a>
					<ul>
						<li><a href="admin/selectBlogByCheck?check=1" target="main">已审核</a></li>
						<li><a href="admin/selectBlogByCheck?check=0" target="main">未审核</a></li>
					</ul></li>
					<li><a onclick="check()">添加管理员</a></li>
					<li><a href="admin/adminLogout" target="_parent">退出</a></li>
			</ul>
		</div>
		<!--END navigation-->
	</div>
</body>
</html>