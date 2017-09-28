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
  
            <div id="main-content">
            	<ul class="pageing">
                <li>
            	<div class="post">
            	<c:forEach items="${bloglist}" var="bl">
            		<h1 class="title">${bl.blogTitle}</h1>
                    <span class="facebook"><a href="#"></a></span>
                    <div class="meta">
                    	<ul >
                        	<li class="admin"><a href="user/userSelect?userName=${bl.userId}&flag=selectuserinfo">${bl.userId}</a></li>
                            <li class="date">${bl.time}</li>
                            <li class="comments"><a href="#">${bl.seeCount}</a></li>
                        </ul>
                    </div><!--end meta-->
                    
                    <span class="main-border"></span>
                    
                    <img class="post-image" src="images/post-image.jpg" alt="post image" height="214" width="609" />
                    
                    <p>${bl.blogContent}</p>
                    <a class="read-more" href="post.html">Read More</a>
                    <div class="clear"></div>
                    </c:forEach>
  				</div><!--END post-->
                </li>
                <li>
                <div class="post">
            		<h1 class="title">BLOG POST NUMBER TWO</h1>
                	<span class="twitter"><a href="#"></a></span>
                    <span class="facebook"></span>
                    <div class="meta">
                        <ul>
                        	<li class="admin"><a href="#">Admin</a></li>
                            <li class="date">November 21, 2012</li>
                            <li class="category"><a href="#">Computers</a></li>
                            <li class="comments"><a href="#">0 Comments</a></li>
                        </ul>
                    </div><!--end meta-->
                    
                    <span class="main-border"></span>
                    
                    <img class="post-image" src="images/post-image2.jpg" alt="post image" height="214" width="609" />
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec urna in velit mollis semper quis vel sapien. Aenean tristique, diam sed sollicitudin convallis, diam 	 sapien fermentum odio, non venenatis turpis dolor vitae nunc. Donec vestibulum erat et nisi semper et dignissim diam molestie. Maecenas luctus consequat arcu eget eleifend. Mauris eget augue turpis, at commodo metus. Integer sagittis tincidunt facilisis. Duis pharetra turpis turpis. Aliquam libero tortor, dictum vitae egestas quis, interdum nec risus. Ut commodo suscipit lectus, in auctor turpis posuere ac. Aliquam orci arcu, hendrerit in mattis et, dignissim luctus leo. Nullam mattis venenatis luctus. Sed sit amet ante purus.</p>
                    <a class="read-more" href="post.html">Read more</a>
  				</div><!--END post-->
                </li>
                </ul>
                <div class="Pagination"></div>
                 <div class="clear"></div>
            </div><!--END main-content-->
        </div><!--END main-->
      		

</body>
</html>