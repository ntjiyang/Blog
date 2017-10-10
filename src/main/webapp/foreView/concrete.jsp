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

function check(){
	 var type = document.getElementById("content").value;

	 
	 if(content == ''){
		 alert("请输入内容");
		 return false;
	 }
	 return true;
}

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
                        	<li class="admin"><a href="user/userSelectById?userid=${userid}&id=${bl.userId}" target="_parent">${bl.userId}</a></li>
                            <li class="date">${bl.time}</li>
                            <li class="comments"><a href="#">${bl.seeCount}</a></li>
                        </ul>
                    </div><!--end meta-->
                    <div class="context">
                    <p>${bl.blogContent}</p>
                     </div>
                     
                     
                      <hr>
                      <Br>
                     
                     <div align="right">
                     
                     	<form action="user/insertComment?blogId=${bl.id}&userId=${userid}&replyUserId=${bl.userId}&id=${bl.id}" name="comments" method="post" onsubmit="return check()">
                     		<textarea rows="8" cols="85" name="content" id="content"></textarea>
                     		<input type="submit" value="发表回复"/>
                     		<input type="reset" value="清空内容"/>
                     	</form>
                     	
              		 </div>
              </c:forEach>
                    <c:forEach items="${commentlist}" var="cl">
                    <ul>
                    	<li>楼层：${cl.num} &nbsp;&nbsp;&nbsp; 用户id：<a href="user/userSelectById?userid=${userid}&id=${cl.userId}" target="_parent">${cl.userId}</a></li>
                    	<li>&nbsp;</li>
                    	<li>${cl.content}</li>
                    	<li>&nbsp;</li>
                    	<li>发布于：${cl.blogTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回复他</li>
                    	<li>----------------------------------------------------------------------------------------------------------------------------------------------</li>
                    </ul>
                    
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