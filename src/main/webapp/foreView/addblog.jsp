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
	
 function check(){
	 var type = document.getElementById("type").value;
	 var title = document.getElementById("title").value;
	 var content = document.getElementById("content").value;
	 
	 if(type == '' || title == '' || content == ''){
		 alert("请输入正确内容");
		 return false;
	 }
	 return true;
 }

 function checkMsg(obj){
	 //获取输入文本域的长度
	 if(obj.value.length > 5000 ){
		 alert("输入内容的长度不能大于5000个字符");
		 obj.value = obj.value.substring(0,5000);
	 }
	 var len = obj.value.length;
	 document.getElementById("ContentUse").innerHTML = len;
	 document.getElementById("ContentRem").innerHTML = 5000-len;
	 
 }
 
</script>
<style type="text/css">
	textarea {font-size:18px}

</style>
</head>
<body>
    <center>
					<form action="user/blogInsert?userId=${userid}" method="post" onsubmit="return check()">
						
							<table border="0" width="200px" height="150px"  cellspacing="0">
								<tr height="30">
								  <td width="200px" style="text-indent:10px"><font color="#004790"><b>■发布博客</b></font></td></tr>
								<tr>
									<td align="center">
								  <table border="0" width="200px"  cellspacing="8">                    
											<tr>
												<td width="20%" style="text-indent:10">博客类别：</td>
												<td>
												   <select name="type" id="type">
														<option value="1">教育</option>
														<option value="2">文学</option>
														<option value="3">推理</option>
														<option value="4">电影</option>
														<option value="5">时尚</option>
														<option value="6">科研</option>
														<option value="7">网络</option>
														<option value="8">游戏</option>
														<option value="9">时事</option>
														<option value="10">历史</option>
														<option value="11">旅游</option>

												  </select>
										
												</td>
												<td align="right"><font color="#7F7F7F">[信息标题最多不得超过40个字符]&nbsp;&nbsp;</font></td>
											</tr>
											<tr>
												<td style="text-indent:10">博客标题：</td>
												<td colspan="2">
											 <input type="text" name="blogTitle" size="50" maxlength="40" value="" id="title"/>
												</td>                        
											</tr>
											<tr>
												<td style="text-indent:10">博客内容：</td> 
												<td>
													<font color="#7F7F7F">  
														已用<label id="ContentUse"></label>&nbsp;&nbsp;
														剩余<label id="ContentRem"></label> 
													</font>
												</td>
												<td align="right"><font color="#7F7F7F">[内容不得超过5000个字]&nbsp;&nbsp;</font></td>
											</tr>
											<tr><td colspan="3" align="center"><textarea name="blogContent" cols="65" rows="40" id="content"  onkeyup="checkMsg(this)"></textarea></td></tr>                    
										</table>                
									</td>
								</tr>
								<tr align="center" height="50">
									<td>
										<input type="submit" id="info_Add_action_0" value="&#21457;&#24067;"/>

										<input type="reset" value="&#37325;&#22635;"/>
									</td>
								</tr>
							</table>  
							</form>      
</center>
</body>
</html>
