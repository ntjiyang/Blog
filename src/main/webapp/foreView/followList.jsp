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
<link href="css/style.css" rel="stylesheet" type="text/css" />
 
 <script type="text/javascript">
 	
 function del(){
	 var msg = "确认取消关注？";
	 
	 if(confirm(msg)==true){
		 return true;
	 }else{
		 return false;
	 }
	 
 }
 	
 
 </script>
</head>
<body>

 <div id="side">
 	<h3>&nbsp;&nbsp;&nbsp;关注列表</h3>
         
           <div id="sidebar-widgets">
           <div class="widget recentposts">    
            <c:forEach items="${followlist}" var="follow">
            <ul>
            <li class="thumb"><img src="images/image2.jpg" alt="toons" height="61" width="57" /></li>
           	<li><span class="title"><a href="user/blogSelectByUserId?flag=0&userId=${follow.followId}" target="main">${follow.followUserName}</a></span></li>
            <li><a href="user/userSelect?flag=selectuserinfo&userName=${follow.followUserName}" target="main">用户信息</a></li>
            <li><a href="user/deleteFollow?followId=${follow.followId}&userId=${follow.userId}" onclick="javascript:return del();"><font color="red">取消关注</font></a></li>
            </ul>
           </c:forEach>
        	</div>	
          	</div>
          	
          <center>
              <c:if test="${page.currentPage != 1 && page.currentPage != 0}">
                    <a href="user/selectFollowByUserId?userId=${userid}&currentPage=1"><input type="button" value="<<"/></a>
              </c:if>
              <a href="user/selectFollowByUserId?userId=${userid}&currentPage=${page.currentPage -1 }"><input type="button" 
              <c:if test="${page.currentPage==1 || page.currentPage==0}"> disabled="disabled" </c:if> value="上一页"/></a>
              <a href="user/selectFollowByUserId?userId=${userid}&currentPage=${page.currentPage +1 }"><input type="button" 
              <c:if test="${page.currentPage==page.totalPage}"> disabled="disabled" </c:if> value="下一页"/></a>
              <c:if test="${page.currentPage !=page.totalPage }">
                   <a href="user/selectFollowByUserId?userId=${userid}&currentPage=${page.totalPage}"><input type="button" value=">>"/></a>
              </c:if>
        </center>
          	</div>
           

</body>
</html>