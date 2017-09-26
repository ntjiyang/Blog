<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath()%>/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sider</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script><!--Needed for the prettyPhoto to function-->
<script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"  type="text/javascript"></script><!--runs the tabs widgets and toggle widgets-->
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />

<script type="text/javascript">
   	$(window).load(function() {
        $('#slider').nivoSlider({
			effect: 'random',
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
<link rel="stylesheet" href="css/default.css" type="text/css" media="screen" />
</head>

<body>
	<div id="wrapper">
    
      <div id="main">
            <div id="main-content">
                    <div id="page">
                    <div class="slider-wrapper theme-default">
            			<div id="slider" class="nivoSlider">
                     		<img class="post-image" src="images/post-image.jpg" alt="post image" height="214" title="This is a caption" width="609" />
                            <img class="post-image" src="images/post-image2.jpg" alt="post image" height="214" width="609" />
                            <img class="post-image" src="images/post-image3.jpg" alt="post image" title="#htmlcaption" height="214" width="609" />
                    	</div><!--END slider-->
                        <div id="htmlcaption" class="nivo-html-caption">
                            <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>. 
                        </div><!--END htmlcaption-->
                       </div><!--END nivoSlider-->
                    <span class="main-border"></span>
                    	<h2>Possible page setup</h2>
                    	<div class="thirds">
                    	<img src="images/gallery1.jpg" alt="" height="126" width="177" />
                        
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra egestas tempus. Duis lobortis gravida lobortis. Sed molestie metus id sapien adipiscing ornare. </p>
                    	</div><!--END thirds-->
                        
                        <div class="thirds">
                    	<img src="images/gallery2.jpg" alt="" height="126" width="177" />
                         
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra egestas tempus. Duis lobortis gravida lobortis. Sed molestie metus id sapien adipiscing ornare. </p>
                    	</div><!--END thirds-->
                        
                        <div class="thirds-last">
                    	<img src="images/gallery3.jpg" alt="" height="126" width="177" />
                        
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra egestas tempus. Duis lobortis gravida lobortis. Sed molestie metus id sapien adipiscing ornare. </p>
                    	</div><!--END thirds-->
                        <div class="clear"></div>
                        
                        <p><img class="left" src="images/gallery3.jpg" alt="" height="126" width="177" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra egestas tempus. Duis lobortis gravida lobortis. Sed molestie metus id sapien adipiscing ornare. Cras tristique tellus non nibh gravida a condimentum eros sagittis. Pellentesque facilisis elementum arcu eget ullamcorper.</p>

                        <p><img class="right" src="images/gallery1.jpg" alt="" height="126" width="177" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pharetra Duis egestas tempus. Duis lobortis gravida lobortis. Sed molestie metus id sapien adipiscing ornare. Cras tristique tellus non nibh gravida a gravida condimentum eros sagittis. Pellentesque facilisis elementum arcu eget ullamcorper.</p>
                        
                        <h2>What is Lorem Ipsum</h2>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                        <p>Source: <a href="http://www.lipsum.com/">Lorem Ipsum</a></p>
                </div><!--end page-->
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
           	<h3>最新文章</h3>
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
           
           <div class="widget">
           	<h3>最新评论</h3>
            
            <ul>
            	<li><span class="title"><a href="#">Nam liber tempor cum soluta nobis eleifend...</a></span></li>
                <li><span class="date">By <a href="#">Guest</a>, November 15, 2012</span></li>
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