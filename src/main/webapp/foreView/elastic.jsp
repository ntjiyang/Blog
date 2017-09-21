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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.eislideshow.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />

<script type="text/javascript">
    $(window).load(function() {
        $('#ei-slider').eislideshow({
					animation			: 'center',
					autoplay			: true,
					slideshow_interval	: 3000,
					titlesFactor		: 0
                });
	$('span.category').hover(function(){
    $(this).next().css('background-color','#e25050');
    },function(){
    $(this).next().css('background-color','#393939');
    });
    });
    </script>
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="wrapper">
    
      <div id="main">
        <div id="navigation">
               <ul>
                <li><a href="index-2.html">主页</a></li> 
                <li><a href="post.html">关于</a>
                	<ul>
                    	<li><a href="post.html">样本页</a></li>
                        <li><a href="blankPage.html">空白页</a></li>
                        <li><a href="slider.html">Nivo Slider</a></li>
                        <li><a class="active" href="elastic.html">Elastic Slider</a><li>
                     </ul>
                </li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="shortcodes.html">Shortcodes</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </div><!--END navigation-->
            <div id="main-content">
                    <div class="post">
                            <div id="ei-slider" class="ei-slider">
                    <ul class="ei-slider-large">
						<li>
                            <img src="images/post-image.jpg" alt=""/>
                            <div class="ei-title">
                                <h2>Passionate</h2>
                                <h3>Seeker</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images/post-image2.jpg" alt="" />
                            <div class="ei-title">
                                <h2>Creative</h2>
                                <h3>Duet</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images/post-image3.jpg" alt="" />
                            <div class="ei-title">
                                <h2>Friendly</h2>
                                <h3>Devil</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images/post-image.jpg" alt=""/>
                            <div class="ei-title">
                                <h2>Passionate</h2>
                                <h3>Seeker</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images/post-image2.jpg" alt="" />
                            <div class="ei-title">
                                <h2>Creative</h2>
                                <h3>Duet</h3>
                            </div>
                        </li>
                    </ul><!-- ei-slider-large -->
                    <ul class="ei-slider-thumbs">
                        <li class="ei-slider-element">Current</li>
						<li><a href="#">Slide 1</a><img src="images/post-thumb.jpg" alt="" /></li>
                        <li><a href="#">Slide 2</a><img src="images/post-thumb2.jpg" alt="" /></li>
                        <li><a href="#">Slide 3</a><img src="images/post-thumb3.jpg" alt="" /></li>
                        <li><a href="#">Slide 4</a><img src="images/post-thumb.jpg" alt="" /></li>
                        <li><a href="#">Slide 5</a><img src="images/post-thumb2.jpg" alt="" /></li>
                    </ul><!-- ei-slider-thumbs -->
                </div><!-- ei-slider -->
                        
                    <span class="main-border"></span>
                    <div class="half">
                    <h2>This is an unordered list</h2>
                        <ul class="list">
                            <li>List item 1</li>
                            <li>List item 2</li>
                            <li>List item 3</li>
                            <li>List item 4</li>
                        </ul>
                    </div><!--END half-->
                    <div class="half-last">
                        <h2>A numbered list</h2>
                        <ol class="list">
                            <li>List item 1</li>
                            <li>List item 2</li>
                            <li>List item 3</li>
                            <li>List item 4</li>
                     	</ol>
                     </div><!--END half-last-->
                     <div class="clear"></div>
                      <div class="half">
                    <h2>Another List style</h2>
                        <ul class="circles">
                            <li>List item 1</li>
                            <li>List item 2</li>
                            <li>List item 3</li>
                            <li>List item 4</li>
                        </ul>
                    </div><!--END half-->
                    <div class="half-last">
                        <h2>One more for fun</h2>
                        <ul class="square">
                            <li>List item 1</li>
                            <li>List item 2</li>
                            <li>List item 3</li>
                            <li>List item 4</li>
                     	</ol>
                     </div><!--END half-last-->
                </div><!--end post-->
            </div><!--END main-content-->
        </div><!--END main-->
        <div id="side">
    	<div id="sidebar-header">
        	<div id="header">
            	<a href="index-2.html"><span id="logo">博客<img src="images/period.png" alt="period" height="8" width="9" /></span></a>
            </div><!--END header-->
            <span class="border"></span>
            
            <form action="#" method="post">
            	<input type="text" name="search" id="search" placeholder="Search ..." /><br />
            </form>
            
           <span class="border"></span>
           </div><!--END sidebar-header-->
           
           <div id="sidebar-widgets">
           <div class="widget recentposts">
           	<h3>RECENT POSTS</h3>
            	<ul>
            		<li class="thumb"><img src="images/image1.jpg" alt="toons" height="61" width="57" /></li>
               		<li><span class="title"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. .</a></span></li>
                	<li><span class="date">November 21, 2012 - 3 comments</span></li>
                </ul>
            <span class="widget-border"></span>
            
            <ul>
            	<li class="thumb"><img src="images/image2.jpg" alt="toons" height="61" width="57" /></li>
                <li><span class="title"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></span></li>
                <li><span class="date">November 21, 2012 - 3 comments</span></li>
            </ul>
            <span class="widget-border"></span>
            
            <ul>
            	<li class="thumb"><img src="images/image3.jpg" alt="toons" height="61" width="57" /></li>
                <li><span class="title"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></span></li>
                <li><span class="date">November 21, 2012 - 3 comments</span></li>
            </ul>
            <span class="widget-border"></span>
            
            <ul>
            	<li class="thumb"><img src="images/image4.jpg" alt="toons" height="61" width="57" /></li>
                <li><span class="title"><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></span></li>
                <li><span class="date">November 21, 2012 - 3 comments</span></li>
            </ul>
            <span class="widget-border"></span>
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
        </div><!--END sidebar-widgets-->
		</div><!--END Side--><!--This div keeps the sidebar from floating right when the main content is empty-->
        <div class="clear"></div>
        <div class="push"></div>
        
        </div><!--End wrapper-->
        <div id="footer">
        	<div id="footerwrap">
            	<div class="footerwidgets">
                	<div id="aboutauthor">
                    	<h1>ABOUT THE AUTHOR</h1>
                        <span class="widget-border"></span>
                        <p>
                        	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec urna in velit mollis semper quis vel sapien. Aenean tristique, diam sed sollicitudin convallis, diam sapien. Lorem ipsum dolor sit amet, consectetur adipiscing.
                        </p>
                        
                        <h1>FOLLOW ME</h1>
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
                    	<h1>ARCHIVES</h1>
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
                    	<h1>FROM FLICKR</h1>
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
                    	<li><a href="foreView/index.jsp">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Portfolio</a></li>
                        <li><a href="#">Shortcodes</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div><!--END footer-navigation-->
                
                <div>
                	<span id="copyright">&copy; Copyright 2012, Sider Blog Theme by N-gee</span>
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