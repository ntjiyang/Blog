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


function check(id,fid,fname){
	window.location.href="user/insertFollow?userId="+id+"&followId="+fid+"&followUserName="+fname;  
	window.location.href="user/selectFollow?userId="+id+"&followId="+fid+"&followUserName="+fname;
	  
}


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
        
            <b style="font-size: 20px">${userName}</b>
			<a href="user/insertFollow?userId=${userid}&followId=${id}&followUserName=${userName}" target="main"><input type="button" value="关注"/></a>
             
            </center>   
           <span class="border"></span>
             
           </div><!--END sidebar-header-->
      
          <div align="center">
             
    			<table style="font-size:15px;height:40%;">
    			<tr><td>&nbsp;</td></tr>
            	<tr><td><a href="user/blogSelectByUserId?flag=0&userId=${id}" target="main">个人中心</a></td></tr>
       			<tr><td>&nbsp;</td></tr>
            	 <tr><td><a href="user/userSelect?flag=selectuserinfo&userName=${userName}" target="main">个人资料</a></td></tr>
 				<tr><td>&nbsp;</td></tr>
           		 </table>
          
           </div><!--END widget-->
     
           <div id="sidebar-widgets">

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

     <iframe name="main" src="user/blogSelectByUserId?flag=0&userId=${id}" style="height:800px;width:70%;float:right"  scrolling="no"></iframe>

      
      <!--END Side--><!--This div keeps the sidebar from floating right when the main content is empty-->
        <div class="clear"></div>
        <div class="push"></div>
        
        </div><!--End wrapper-->
        
<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
 
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>