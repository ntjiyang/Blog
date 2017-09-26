<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script><!--Needed for the prettyPhoto to function-->
<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"  type="text/javascript"></script><!--runs the tabs widgets and toggle widgets-->
<script type="text/javascript" src="js/simplepager.js"></script><!--runs the pagination-->
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />

<script type="text/javascript">
$(document).ready(function() {
	$('span.category').hover(function(){
    $(this).next().css('background-color','#e25050');
    },function(){
    $(this).next().css('background-color','#393939');
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
       

 <ul>
                <li><a href="blog/blogSelectByUserId?userId=${id}" target="main">主页</a></li> 
                <li><a href="foreView/post.jsp">关于</a>
                	<ul>
                    	<li><a href="foreView/post.jsp" target="main">样本页</a></li>
                        <li><a href="foreView/blankPage.jsp" target="main">空白页</a></li>
                        <li><a href="foreView/slider.jsp" target="main">Nivo Slider</a></li>
                     </ul>
                </li>
                <li><a href="foreView/gallery.jsp" target="main">Gallery</a></li>
                <li><a href="">Shortcodes</a></li>
                <li><a href="">Contact</a></li>
            </ul>
 </div><!--END navigation-->
 </div>
</body>
</html>