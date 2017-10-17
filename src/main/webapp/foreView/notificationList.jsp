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
<style type="text/css">
	.context{
	width:600px;
	height:100px;
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
<body style="width:100%;hight:100%">

 <div id="main">
  			
            <div id="main-content">
            	<ul class="pageing">
                <li>
               
            	<div class="post">
            	 <h1>通知列表</h1>
  				<hr>
				<ul>
					
					
					<table style="font-size:16px;width:600px;height:100px">
						<tr>
						<td>管理员</td>
						<td>通知标题</td>
						<td>接收时间</td>
						</tr>
						<c:forEach items="${notificationList}" var="nl">
						<tr>
						<td>${nl.notiadminId}</td>
						<td><a href="user/selectNotification?notificationId=${nl.notificationId}">${nl.notificationTitle}</a></td>
						<td>${nl.notificationTime}</td>
						<td><a href="user/deleteNotification?notificationId=${nl.notificationId}&notiuserId=${nl.notiuserId}">
						<input type="button" value="删除" onclick="javascript:return del();"/></a></td>
						</tr>
						</c:forEach>				
					</table>	
        
                   
				</ul>
		<center>
              <c:if test="${page.currentPage != 1 && page.currentPage != 0}">
                    <a href="user/selectMoreNotification?NotiuserId=${userid}&currentPage=1"><input type="button" value="<<"/></a>
              </c:if>
              <a href="user/selectMoreNotification?NotiuserId=${userid}&currentPage=${page.currentPage -1 }"><input type="button" 
              <c:if test="${page.currentPage==1 || page.currentPage==0}"> disabled="disabled" </c:if> value="上一页"/></a>
              <a href="user/selectMoreNotification?NotiuserId=${userid}&currentPage=${page.currentPage +1 }"><input type="button" 
              <c:if test="${page.currentPage==page.totalPage}"> disabled="disabled" </c:if> value="下一页"/></a>
              <c:if test="${page.currentPage !=page.totalPage }">
                   <a href="user/selectMoreNotification?NotiuserId=${userid}&currentPage=${page.totalPage}"><input type="button" value=">>"/></a>
              
              </c:if>
        </center>
				
  				</div><!--END post-->
                </li>
                </ul>
                <div class="Pagination"></div>
                 <div class="clear"></div>
            </div><!--END main-content-->
        </div><!--END main-->
      		

</body>
</html>