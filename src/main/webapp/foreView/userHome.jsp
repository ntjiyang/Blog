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
 	a{text-decoration:none;}
 	#notification{
 			width:100px;
			height:400px;
			text-overflow:-o-ellipsis-lastline;
			white-space:nowrap;
			overflow:hidden;
			text-overflow:ellipsis;
			display:-webkit-box;
			-webkit-line-clamp:7;
			-webkit-box-orient: vertical;
 	}
 
 </style>
</head>

<body>
	<div id="wrapper">
	 <div id="main">
      <div id="navigation">
                	<ul>
                		<li><a href="user/blogSelectByUserId?flag=title&userId=${userid}">主页</a></li>               
                        <li><a href="user/quit?userid=${userid}">退出</a></li>
                     </ul>
           
 </div><!--END navigation-->
 </div>
        <div id="side">
    	<div id="sidebar-header">
    	
        	<div id="header">
            	<a href="index-2.html"><span id="logo">头像<img src="images/period.png" alt="period" height="8" width="9" /></span></a>
            </div><!--END header-->
         <center>
            <b style="font-size: 20px">${username}</b>
            </center>   
           <span class="border"></span>
           </div><!--END sidebar-header-->
           
          <div align="center">
            
    			<table style="font-size:15px;height:40%;">
    			<tr><td>&nbsp;</td></tr>
            	<tr><td><a href="user/blogSelectByUserId?flag=0&userId=${userid}" target="main">个人中心</a></td></tr>
       			<tr><td>&nbsp;</td></tr>
            	 <tr><td><a href="user/userSelect?userName=${username}&flag=selectuser&Id=${userid}" target="main">个人资料</a></td></tr>
 				<tr><td>&nbsp;</td></tr>
 				 <tr><td><a href="foreView/addblog.jsp" target="main">发布博客</a></td></tr>
 				<tr><td>&nbsp;</td></tr>
           		 </table>
           </div><!--END widget-->
         
           <div id="sidebar-widgets">
           <center>	<span class="widget-border"></span></center>
           
             <iframe name="follow" src="user/selectFollowByUserId?userId=${userid}" style="height:500px;width:300px;"scrolling="no"></iframe>
           	
            <span class="widget-border"></span>
          
           
           <div class="widget" id="notification">  
           	<h3>最新通知 &nbsp;&nbsp;<a href="user/selectMoreNotification?NotiuserId=${userid}" target="main">[更多..]</a></h3>
           	  
           	<c:forEach items="${notificationlist}" var="ntfl">
            
            <ul>
            	<li><span class="title"><a href="user/selectNotification?notificationId=${ntfl.notificationId}" target="main">${ntfl.notificationTitle}</a></span></li>
                <li><span class="date">By <a href="#">${ntfl.notiuserId}</a>${ntfl.notificationTime}</span></li>
            	<li><span class="widget-border"></span></li>
            </ul>
          </c:forEach>
        
           </div><!--END widget-->

           <div class="widget">
           	<h3>FROM THE GALLERY</h3>
            
            <ul class="gallery">
            	<li><a href="images/big1.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small1.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big2.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small2.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big3.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small3.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big4.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small4.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big5.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small5.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big6.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small6.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big7.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small7.jpg" alt="blank" height="46" width="46" /></a></li>
                <li><a href="images/big8.jpg" rel="prettyPhoto[sidebargallery]" class="gallery"><img src="images/small9.jpg" alt="blank" height="46" width="46" /></a></li>
            </ul>
           </div><!--END widget-->
        </div><!--END sidebar-widgets-->
		</div><!--END Side-->

     <iframe name="main" src="user/blogSelectByUserId?flag=0&userId=${userid}" style="height:1200px;width:70%;float:right"  scrolling="no"></iframe>

      
      <!--END Side--><!--This div keeps the sidebar from floating right when the main content is empty-->
        <div class="clear"></div>
        <div class="push"></div>
        
        </div><!--End wrapper-->
        
<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
         <script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
    $("a[rel^='prettyPhoto']").prettyPhoto();
  });
</script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>