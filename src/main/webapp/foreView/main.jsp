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
<style type="text/css">
	.context{
	width:600px;
	height:300px;
	text-overflow:-o-ellipsis-lastline;
	overflow:hidden;
	text-overflow:ellipsis;
	display:-webkit-box;
	-webkit-line-clamp:7;
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
            		<h3 class="title">${bl.blogTitle}</h3>
                    <span class="facebook"><a href="#"></a></span>
                    <div class="meta">
                    	<ul>
                        	<li class="admin"><a href="user/userSelectById?userid=${userid}&id=${bl.userId}" target="_parent">${bl.userId}</a></li>
                            <li class="date">${bl.time}</li>
                            <li class="comments"><a href="#">${bl.seeCount}</a></li>
                        </ul>
                    </div><!--end meta-->
                    <div class="context">
                    <p>${bl.blogContent}</p>
                    <a href="user/selectblogByBlogId?id=${bl.id}&blogId=${bl.id}"><input type="button" value="查看完整内容"/></a>
                    <hr>
                    </div>
                    </c:forEach>
				</ul>
  				</div><!--END post-->
                </li>
                </ul>
                <div class="Pagination"></div>
                 <div class="clear"></div>
            </div><!--END main-content-->
        </div><!--END main-->
      		

</body>
</html>