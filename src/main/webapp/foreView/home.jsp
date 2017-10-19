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
	
	var userId = "${sessionScope.userid}";

	if (userId == null || userId == "") {
		alert("您还未登录！");
		window.location.href = "index.jsp";
	}
	
	
	
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
                		<li><a href="user/blogSelectByUserId?flag=title&userId=${userid}">主页</a></li>   
                		<li><a href="user/returnMyPage?Id=${userid}">返回个人中心</a></li>
                		<li><form action="user/searchBlogByTitle" target="main" method="post">
                				<input type="text" name="blogTitle"  placeholder="Search Blog..."/>
                				<input type="submit" value="搜索"/>
                			</form></li>            
                     </ul>
 </div><!--END navigation-->
 </div>

 <div id="side">
    	<div id="sidebar-header">
        	<div id="header">
            	<span id="logo">Sider<img src="images/period.png" alt="period" height="8" width="9" /></span>
            </div><!--END header-->
            <span class="border"></span>
            
            <form action="user/userSelect?flag=charge&Id=${userid}" method="post">
            	<input type="text" name="userName" id="search" placeholder="Search User..." /><br />
            </form>
            
           <span class="border"></span>
           </div><!--END sidebar-header-->
           
           <div id="sidebar-widgets">
           <div class="widget recentposts">
           	<h3>最新博客</h3>
           	<c:forEach items="${bloglist}" var="bl">
            	<ul>
            		<li class="thumb"><img src="images/image1.jpg" alt="toons" height="61" width="57" /></li>
               		<li><span class="title"><a href="user/selectblogByBlogId?id=${bl.id}&blogId=${bl.id}&userId=${userid}&otherId=${bl.userId}" target="main">${bl.blogTitle}</a></span></li>
                	<li>查看次数：${bl.seeCount}</li>
                	<li><span class="date">${bl.time}</span></li>
                </ul>
                </c:forEach>
   
                
            <span class="widget-border"></span>
            
           </div><!--END widget-->
           
           <div class="widget">
           	<h3>最热博客</h3>
            <c:forEach items="${blogseelist}" var="bsl">
            <ul>
            	<li><span class="title"><a href="user/selectblogByBlogId?id=${bsl.id}&blogId=${bsl.id}&userId=${userid}&otherId=${bsl.userId}" target="main">${bsl.blogTitle}</a></span></li>
                <li>查看次数：${bsl.seeCount}</li>
                <li><span class="date">${bsl.time}</span></li>
            	<li><span class="widget-border"></span></li>
            </ul>
            </c:forEach>
           </div><!--END widget-->
           
           <div class="widget cats">
           	<h3>博客类型</h3>
            
            <ul>
            	<li><a href="user/selectBlogByType?type=1" target="main"><span class="category">教育</span><span class="number"></span></a></li>
           		<li><span class="widget-border"></span></li>
            
            	<li><a href="user/selectBlogByType?type=2" target="main"><span class="category">文学</span><span class="number"></span></a></li>
            	<li><span class="widget-border"></span></li>

            	<li><a href="user/selectBlogByType?type=3" target="main"><span class="category">推理</span><span class="number"></span></a></li>
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
 
<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
         <script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
    $("a[rel^='prettyPhoto']").prettyPhoto();
  });
</script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>