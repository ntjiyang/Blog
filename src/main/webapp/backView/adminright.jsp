<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	function powercheck() {
		var pow = "${sessionScope.adminpower}";
		var newPow = $("#power").val();
		if (parseInt(newPow) > parseInt(pow)) {
			alert("权限不够！");
		}
	}
</script>
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>

	<div id="side">
		<div id="sidebar-header">

			<div id="header">
				<a href="index-2.html"><span id="logo1">管理员<img
						src="images/period.png" alt="period" height="8" width="9" /></span></a>
			</div>
			<!--END header-->
			<center>
				${sessionScope.adminname}<br>${sessionScope.adminpower}
			</center>
			<span class="border"></span>
		</div>
		<!--END sidebar-header-->

		<div id="sidebar-widgets">
			<div class="widget recentposts">
				<h3>用户列表</h3>
				<form action="admin/adminSelect" method="post">
					<input type="text" name="userName" id="search" placeholder="搜索 ..." /><br />
				</form>
				<c:choose>
					<c:when test="${user.usertotalPage==0}"></c:when>
					<c:otherwise>
						<ul>
							<c:forEach items="${userlist}" var="user" varStatus="vst">
								<ul>
									<li class="thumb"><img src="images/image2.jpg" alt="toons"
										height="61" width="57" /></li>
									<li><span class="title"><a target="main"
											href="admin/adminDetail?id=${user.id}&flag=user">${user.userName}</a></span></li>
									<li><span class="date">${user.fans}</span></li>
								</ul>
								<span class="widget-border"></span>
							</c:forEach>
							<c:forEach begin="1" end="${user.usertotalPage}" var="number">
								<a
									href="admin/adminSelect?usercurrentPage=${number}&userName=${user.userName}">
									<span class="number"
									<c:if test="${user.usercurrentPage==number}"> style="background-color: red"</c:if>>${number}</span>
								</a>
							</c:forEach>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
			<!--END widget-->

			<div class="widget">
				<h3>管理员列表</h3>
				<form action="admin/adminSelect" method="post">
					<input type="text" name="adminName" id="search"
						placeholder="搜索 ..." /><br />
				</form>
				<c:choose>
					<c:when test="${admin.admintotalPage==0}"></c:when>
					<c:otherwise>
						<ul>
							<c:forEach items="${adminlist}" var="admin" varStatus="vst">
								<li><span class="title"><a target="main"
										href="admin/adminDetail?adminId=${admin.adminId}&flag=admin">${admin.adminName}</a></span></li>
								<li><span class="date">${admin.adminPower}</span></li>
								<li><span class="widget-border"></span></li>
							</c:forEach>
							<c:forEach begin="1" end="${admin.admintotalPage}" var="number">
								<a
									href="admin/adminSelect?admincurrentPage=${number}&adminName=${admin.adminName}">
									<span class="number"
									<c:if test="${admin.admincurrentPage==number}"> style="background-color: red"</c:if>>${number}</span>
								</a>
							</c:forEach>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
			<!--END widget-->

			<div class="widget cats">
				<h3>CATEGORIES</h3>

				<ul>
					<li><a href="#"><span class="category">Movies</span><span
							class="number">10</span></a></li>

					<li><span class="widget-border"></span></li>


					<li><a href="#"><span class="category">Games</span><span
							class="number">4</span></a></li>

					<li><span class="widget-border"></span></li>


					<li><a href="#"><span class="category">Fashion</span><span
							class="number">8</span></a></li>

					<li><span class="widget-border"></span></li>


					<li><a href="#"><span class="category">Science</span><span
							class="number">5</span></a></li>
					<li><span class="widget-border"></span></li>
				</ul>

			</div>
			<!--END widget-->

			<div class="widget">
				<h3>FROM THE GALLERY</h3>

				<ul class="gallery">
					<li><a href="images/big1.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small1.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big2.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small2.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big3.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small3.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big4.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small4.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big5.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small5.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big6.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small6.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big7.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small7.jpg" alt="blank" height="46" width="46" /></a></li>
					<li><a href="images/big8.jpg"
						rel="prettyPhoto[sidebargallery]" class="gallery"><img
							src="images/small9.jpg" alt="blank" height="46" width="46" /></a></li>
				</ul>
			</div>
			<!--END widget-->
		</div>
		<!--END sidebar-widgets-->
	</div>
	<!--END Side-->

</body>
</html>