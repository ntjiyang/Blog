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
	<div id="wrapper">
	 <div id="main">
      <div id="navigation">
       

 <ul>
                <li><a href="user/blogSelectByUserId?flag=title">主页</a></li> 
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

 <div id="side">
    	<div id="sidebar-header">
        	<div id="header">
            	<span id="logo">Sider<img src="images/period.png" alt="period" height="8" width="9" /></span>
            </div><!--END header-->
            <span class="border"></span>
            
            <form action="user/userSelect?flag=charge" method="post">
            	<input type="text" name="userName" id="search" placeholder="Search ..." /><br />
            </form>
            
           <span class="border"></span>
           </div><!--END sidebar-header-->
           
           <div id="sidebar-widgets">
           <div class="widget recentposts">
           	<h3>最新博客</h3>
           	<c:forEach items="${bloglist}" var="bl">
            	<ul>
            		<li class="thumb"><img src="images/image1.jpg" alt="toons" height="61" width="57" /></li>
               		<li><span class="title"><a href="user/selectblogByBlogId?id=${bl.id}&blogId=${bl.id}" target="main">${bl.blogTitle}</a></span></li>
                	<li><span class="date">${bl.time}</span></li>
                </ul>
                </c:forEach>
            <span class="widget-border"></span>
            
           </div><!--END widget-->
           
           <div class="widget">
           	<h3>最热博客</h3>
            
            <ul>
            	<li><span class="title"><a href="#">Nam liber tempor cum soluta nobis eleifend...</a></span></li>
                <li><span class="date">By <a href="#">Guest</a>, November 15, 2012</span></li>
            	<li><span class="widget-border"></span></li>
            </ul>
            
           </div><!--END widget-->
           
           <div class="widget cats">
           	<h3>博客类型</h3>
            
            <ul>
            	<li><a href="user/selectBlogByType?type=1" target="main"><span class="category">教育</span><span class="number"></span></a></li>
           		<li><span class="widget-border"></span></li>
            
            	<li><a href="user/selectBlogByType?type=2" target="main"><span class="category">文学</span><span class="number"></span></a></li>
            	<li><span class="widget-border"></span></li>

            	<li><a href="user/selectBlogByType?type=3" target="main"><span class="category">推力</span><span class="number"></span></a></li>
           		<li><span class="widget-border"></span></li>
            
            	<li><a href="user/selectBlogByType?type=4" target="main"><span class="category">电影</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=5" target="main"><span class="category">时尚</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=6" target="main"><span class="category">科研</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=7" target="main"><span class="category">网络</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=8" target="main"><span class="category">游戏</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=9" target="main"><span class="category">时事</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=10" target="main"><span class="category">历史</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
                
                <li><a href="user/selectBlogByType?type=11" target="main"><span class="category">旅游</span><span class="number"></span></a></li>
                <li><span class="widget-border"></span></li>
            </ul>
            
           </div><!--END widget-->
        </div><!--END sidebar-widgets-->
		</div><!--END Side-->
     <iframe name="main" src="user/blogSelectByUserId?flag=0" style="height:1200px;width:70%;float:right"  scrolling="no"></iframe>

      
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