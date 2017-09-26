<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>
<script type="text/javascript"
	src="http://twitter.com/javascripts/blogger.js"></script>
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
</script>

<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div id="main">
		<div id="navigation">
			<ul style="float: left;margin-left: 40px;">
				<li><a class="active" href="foreView/index.jsp" target="_parent">主页</a></li>
				<li><a href="foreView/post.jsp" target="_parent">关于</a>
					<ul>
						<li><a href="foreView/post.jsp" target="_parent">样本页</a></li>
						<li><a href="foreView/blankPage.jsp" target="_parent">空白页</a></li>
						<li><a href="foreView/slider.jsp" target="_parent">Nivo Slider</a></li>
					</ul></li>
				<li><a href="foreView/gallery.jsp" target="_parent">Gallery</a></li>
				<li><a href="" target="_parent">Shortcodes</a></li>
				<li><a href="" target="_parent">Contact</a></li>
			</ul>
		</div>
		<!--END navigation-->
	</div>
</body>
</html>