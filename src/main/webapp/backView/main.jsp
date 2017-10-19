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

	function del(blogid){
		  if(confirm("是否确认删除？")){
			  deletecheck(blogid);
		  }
	}
	
	function deletecheck(blogid) {
		var pow = "${sessionScope.adminpower}";
		if (parseInt(pow) < 4) {
			alert("权限不够！");
		} else {
			window.location.href="admin/blogUpdate?flag=status&id="+blogid+"&check="+${check}+"&currentPage="+${page.currentPage}+"";
		}
	}
	
	function check(blogid) {
		var pow = "${sessionScope.adminpower}";
		if (parseInt(pow) < 3) {
			alert("权限不够！");
		} else {
			window.location.href="admin/blogUpdate?flag=check&id="+blogid+"&check="+${check}+"&currentPage="+${page.currentPage}+"";
		}
	}
</script>

<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.context {
	width: 600px;
	height: 100px;
	text-overflow: -o-ellipsis-lastline;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 7;
	-webkit-box-orient: vertical;
}
</style>

</head>
<body>

	<div id="main">

		<div id="main-content">
			<ul class="pageing">
				<li>

					<div class="post">
						<h1>${typeName}</h1>

						<ul>
							<c:forEach items="${bloglist}" var="bl">

								<table width="600px">
									<tr>
										<td align="left">
											<h3 class="title">${bl.blogTitle}</h3>
										</td>
										<td align="right"><c:if test="${check==0}">
												<input
													onclick="check(${bl.id})"
													type="button" value="审核" />
											</c:if><input
											onclick="del(${bl.id})"
											type="button" value="删除" /></td>
									</tr>
								</table>
								<div class="meta">
									<ul>
										<li class="admin"><a
											href="user/userSelectById?userid=${userid}&id=${bl.userId}"
											target="_parent">${bl.userId}</a></li>
										<li class="date">${bl.time}</li>
										<li class="comments">${bl.seeCount}</li>
										<li>${typeName}</li>
									</ul>
								</div>
								<!--end meta-->
								<div class="context">
									<p>${bl.blogContent}</p>
									<input
										onclick="window.location.href='admin/selectBlogInfoByBlogId?id=${bl.id}&blogId=${bl.id}'"
										type="button" value="查看完整内容" />
									<hr>
								</div>
							</c:forEach>
						</ul>
						<center>
							<c:if test="${page.currentPage != 1 && page.currentPage != 0}">
								<input
									onclick="window.location.href='admin/selectBlogByCheck?check=${check}&currentPage=1'"
									type="button" value="首页" />
							</c:if>
							<input
								onclick="window.location.href='admin/selectBlogByCheck?check=${check}&currentPage=${page.currentPage -1 }'"
								type="button"
								<c:if test="${page.currentPage==1 || page.currentPage==0}"> disabled="disabled" </c:if>
								value="上一页" /> 第${page.currentPage}页/共${ page.totalPage}页 <input
								onclick="window.location.href='admin/selectBlogByCheck?check=${check}&currentPage=${page.currentPage +1 }'"
								type="button"
								<c:if test="${page.currentPage==page.totalPage}"> disabled="disabled" </c:if>
								value="下一页" />
							<c:if test="${page.currentPage !=page.totalPage }">
								<input
									onclick="window.location.href='admin/selectBlogByCheck?check=${check}&currentPage=${page.totalPage}'"
									type="button" value="尾页" />
							</c:if>
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