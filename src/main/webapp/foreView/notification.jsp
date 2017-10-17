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
function del(){
	 var msg = "确认删除？";
	 
	 if(confirm(msg)==true){
		 return true;
	 }else{
		 return false;
	 }
	 
}
</script>

<link href="css/style.css" rel="stylesheet" type="text/css" />
 
</head>
<body style="width:100%;hight:100%">

 <div id="main">
  			
            <div id="main-content">
            	<ul class="pageing">
                <li>
               
            	<div class="post">
       			<a href="user/selectMoreNotification?NotiuserId=${userid}"><input type="button" value="返回通知列表"/></a> &nbsp;&nbsp;&nbsp;&nbsp;
       			<a href="user/deleteNotification?notificationId=${notifi.notificationId}&notiuserId=${notifi.notiuserId}">
				<input type="button" value="删除" onclick="javascript:return del();"/></a>
  				<p>&nbsp;</p>
				<ul>
			
            		<li><h3 class="title">${notifi.notificationTitle}</h3></li>	
                    <li><div class="meta">
                    	<ul>
                    	<li>By 管理员：${notifi.adminId}</li>
                        <li class="date">${notifi.notificationTime}</li>
                        </ul>
                        
                    </div></li><!--end meta-->
                   
                    <p>&nbsp;</p>
                    <li><div class="context">
                    <p>${notifi.notificationContent}</p>
                    </div></li>  
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