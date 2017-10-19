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
</script>

<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>



	<div id="main">

		<div id="main-content">
			<ul class="pageing">
				<li>
					<div class="post">


						<ul>
							<c:forEach items="${bloglist}" var="bl">
								<h1 class="title">${bl.blogTitle}</h1>
								<span class="facebook"><a href="#"></a></span>
								<div class="meta">
									<ul>
										<li class="admin"><a
											href="user/userSelectById?userid=${userid}&id=${bl.userId}"
											target="_parent">${bl.userId}</a></li>
										<li class="date">${bl.time}</li>
										<li class="comments"><a href="#">${bl.seeCount}</a></li>
									</ul>
								</div>
								<!--end meta-->
								<div class="context">
									<p>${bl.blogContent}</p>
								</div>


								<hr>
								<Br>

							</c:forEach>
							<c:forEach items="${commentlist}" var="cl">
								<ul>
									<li>楼层：${cl.num} &nbsp;&nbsp;&nbsp; 用户id：<a
										href="user/userSelectById?userid=${userid}&id=${cl.userId}"
										target="_parent">${cl.userId}</a></li>
									<li>&nbsp;</li>
									<li>${cl.content}</li>
									<li>&nbsp;</li>
									<li>发布于：${cl.blogTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
									<li>----------------------------------------------------------------------------------------------------------------------------------------------</li>
								</ul>
							</c:forEach>
						</ul>
						<center>
							<c:forEach items="${bloglist}" var="bl">
								<c:if test="${page.currentPage != 1 && page.currentPage != 0}">
									<input
										onclick="window.location.href='admin/selectBlogInfoByBlogId?id=${bl.id}&blogId=${bl.id}&currentPage=1'"
										type="button" value="首页" />
									</a>
								</c:if>
								<input
									onclick="window.location.href='admin/selectBlogInfoByBlogId?id=${bl.id}&blogId=${bl.id}&currentPage=${page.currentPage -1 }'"
									type="button"
									<c:if test="${page.currentPage==1 || page.currentPage==0}"> disabled="disabled" </c:if>
									value="上一页" />
								</a>第${page.currentPage}页/共${ page.totalPage}页<input
									onclick="window.location.href='admin/selectBlogInfoByBlogId?id=${bl.id}&blogId=${bl.id}&currentPage=${page.currentPage +1 }'"
									type="button"
									<c:if test="${page.currentPage==page.totalPage}"> disabled="disabled" </c:if>
									value="下一页" />
								</a>
								<c:if test="${page.currentPage !=page.totalPage }">
									<input
										onclick="window.location.href='admin/selectBlogInfoByBlogId?id=${bl.id}&blogId=${bl.id}&currentPage=${page.totalPage}'"
										type="button" value="尾页" />
									</a>

								</c:if>
							</c:forEach>
						</center>
					</div> <!--END post-->
				</li>
			</ul>
			<div class="Pagination"></div>
			<div class="clear"></div>
		</div>
		<!--END main-content-->
	</div>
	<!--END main-->


</body>
</html>