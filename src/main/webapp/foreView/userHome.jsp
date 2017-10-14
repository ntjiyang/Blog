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
            	<tr><td><a href="user/blogSelectByUserId?flag=0&userId=${userid}" target="main">个人专页</a></td></tr>
       			<tr><td>&nbsp;</td></tr>
            	 <tr><td><a href="" target="main">个人中心</a></td></tr>
           		<tr><td>&nbsp;</td></tr>
            	 <tr><td><a href="user/userSelect?userName=${username}&flag=selectuser" target="main">个人资料</a></td></tr>
 				<tr><td>&nbsp;</td></tr>
 				 <tr><td><a href="foreView/addblog.jsp" target="main">发布博客</a></td></tr>
 				<tr><td>&nbsp;</td></tr>
           		 </table>
           </div><!--END widget-->
         
           <div id="sidebar-widgets">
           <div class="widget recentposts">
           	<h3>关注用户列表</h3>
            <span class="widget-border"></span>
            
            <ul>
            	<li class="thumb"><img src="images/image2.jpg" alt="toons" height="61" width="57" /></li>
                <li><span class="title"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></span></li>
                <li><span class="date">November 21, 2012 - 3 comments</span></li>
            </ul>
           
 
            <span class="widget-border"></span>
           </div><!--END widget-->
           
           <div class="widget">
           	<h3>最新通知</h3>
           	<c:forEach items="${notificationlist}" var="ntfl">
            
            <ul>
            	<li><span class="title"><a href="#">${ntfl.notificationTitle}评论了你</a></span></li>
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
        <div id="footer">
        	<div id="footerwrap">
            	<div class="footerwidgets">
                	<div id="aboutauthor">
                    	<h1 class="title">ABOUT THE AUTHOR</h1>
                        <span class="widget-border"></span>
                        <p>
                        	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec urna in velit mollis semper quis vel sapien. Aenean tristique, diam sed sollicitudin convallis, diam sapien. Lorem ipsum dolor sit amet, consectetur adipiscing.
                        </p>
                        
                        <h1 class="title">FOLLOW ME</h1>
                        <span class="widget-border"></span>
                        <ul id="social">
                        	<li><a href="#"><img src="images/twitter.png" alt="twitter" height="31" width="30" /></a></li>
                            <li><a href="#"><img src="images/facebook.png" alt="facebook" height="31" width="30" /></a></li>
                            <li><a href="#"><img src="images/rss.png" alt="rss" height="31" width="30" /></a></li>
                            <li><a href="#"><img src="images/dribble.png" alt="dribble" height="31" width="30" /></a></li>
                            <li><a href="#"><img src="images/flickr.png" alt="flickr" height="31" width="30" /></a></li>
                            <li><a href="#"><img src="images/linkedIn.png" alt="linkedIn" height="31" width="30" /></a></li>
                        </ul>
                    </div><!--END aboutauthor -->
                    </div><!--END footerwidets-->
                    
                    <div class="footerwidgets">
                    <div id="archives">
                    	<h1 class="title">ARCHIVES</h1>
                        <span class="widget-border"></span>
                        <ul>
                        	<li><a href="#">October 2011</a></li>
                            <li><span class="widget-border"></span></li>
                            <li><a href="#">September 2011</a></li>
                            <li><span class="widget-border"></span></li>
                            <li><a href="#">August 2011</a></li>
                            <li><span class="widget-border"></span></li>
                            <li><a href="#">July 2011</a></li>
                            <li><span class="widget-border"></span></li>
                            <li><a href="#">June 2011</a></li>
                            <li><span class="widget-border"></span></li>
                        </ul>
                    </div><!--END archives-->
                    </div><!--END footerwidets-->
                    
                    <div class="footerwidgets">
                    	<div id="flickr">
                    	<h1 class="title">FROM FLICKR</h1>
                        <span class="widget-border "></span>
                        	<ul>
                            	<li><a href="images/big1.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small1.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big2.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small2.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big3.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small3.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big4.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small4.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big5.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small5.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big6.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small6.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big7.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small7.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big8.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small8.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big9.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small9.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big1.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small1.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big2.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small2.jpg" alt="flickr" height="46" width="46" /></a></li>
                                <li><a href="images/big3.jpg" rel="prettyPhoto[foogergallery]" class="gallery"><img src="images/small3.jpg" alt="flickr" height="46" width="46" /></a></li>
                            </ul>
                         </div><!--END flickr-->
                    </div><!--END footerwidgets-->
                    
                    <div class="footerwidgets">
                    	<div id="twitterfeed">
                    	<h1>TWITTER FEED</h1>
                        <span class="widget-border"></span>
							<div id="twitter_update_list">
                            	<!--This empty div is the container to hold the twitter tweets-->
           					</div>
                        </div><!--END twitterfeed-->
                    </div><!--END footerwidgets-->
                <div class="clear"></div><!--clearing floats so it doesn't mess with footer border-->
            <span id="footer-border"></span>                
                <div id="footer-navigation">
                	<ul>
                    	<li><a href="index-2.html">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Portfolio</a></li>
                        <li><a href="#">Shortcodes</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div><!--END footer-navigation-->
                
                <div>
                	<span id="copyright">&copy; Copyright 2012, Sider Blog Theme by <a href="http://sc.chinaz.com/">Themebuddies</a></span>
                </div><!--END copywrite-->
            </div><!--END footerwrap-->
            <div class="clear"></div>
        </div><!--END footer-->	
<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
         <script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
    $("a[rel^='prettyPhoto']").prettyPhoto();
  });
</script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>