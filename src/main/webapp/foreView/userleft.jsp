<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>
<script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script><!--Needed for the twitter feed-->
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script><!--Needed for the prettyPhoto to function-->
<script type="text/javascript" src="js/twitter.js"></script><!--needed for various things on the page. Put into a custom file instead of having a bunch of stuff in the header-->
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
<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
 
</head>
<body>

        <div id="side">
    	<div id="sidebar-header">
        	<div id="header">
            	<a href="index-2.html"><span id="logo">头像<img src="images/period.png" alt="period" height="8" width="9" /></span></a>
            </div><!--END header-->
        
         
         <center>
            <b style="font-size: 20px"  >${username}</b>
            </center>   
           <span class="border"></span>
           </div><!--END sidebar-header-->
           
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
            
            <ul>
            	<li><span class="title"><a href="#">xxx评论了你</a></span></li>
                <li><span class="date">By <a href="#">阿希</a>, 11, 15, 2012</span></li>
            	<li><span class="widget-border"></span></li>
            
            	<li><span class="title"><a href="#">Nam liber tempor cum soluta nobis eleifend...</a></span></li>
                <li><span class="date">By <a href="#">Guest</a>, November 15, 2012</span></li>
            	<li><span class="widget-border"></span></li>
            
            	<li><span class="title"><a href="#">Nam liber tempor cum soluta nobis eleifend...</a></span></li>
                <li><span class="date">By <a href="#">Guest</a>, November 15, 2012</span></li>
            	<li><span class="widget-border"></span></li>
            
            	<li><span class="title"><a href="#">Nam liber tempor cum soluta nobis eleifend...</a></span></li>
                <li><span class="date">By <a href="#">Guest</a>, November 15, 2012</span></li>
            	<li><span class="widget-border"></span></li>
            </ul>
            
           </div><!--END widget-->
           
           <div class="widget cats">
           	<h3>CATEGORIES</h3>
            
            <ul>
            	<li><a href="#"><span class="category">Movies</span><span class="number">10</span></a></li>
           
            	<li><span class="widget-border"></span></li>
            
           
            	<li><a href="#"><span class="category">Games</span><span class="number">4</span></a></li>
        
            	<li><span class="widget-border"></span></li>
            
           
            	<li><a href="#"><span class="category">Fashion</span><span class="number">8</span></a></li>
         
           		<li><span class="widget-border"></span></li>
            
         
            	<li><a href="#"><span class="category">Science</span><span class="number">5</span></a></li>
                <li><span class="widget-border"></span></li>
            </ul>
            
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

</body>
</html>