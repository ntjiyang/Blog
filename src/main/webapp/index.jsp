<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<base href="<%=basePath%>">  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Head -->
<head>

	<title>登录</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/loginstyle.css" type="text/css" media="all">
 <script type="text/javascript">
 
  var isOk=true;
  function checkemail(obj){
	  var strReg="";
	  var r;
	  var strText=obj.value;
	  strReg  = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
	  r = strText.search(strReg);
	  if(r == -1){
		  alert("邮箱格式不正确");
		  isOk=false;
	  }else{
		  isOk=true;
	  }
  }
  
  function checkphone(obj){
	  var strReg="";
	  var r;
	  var strText=obj.value;
	  strReg  = /^1\d{10}$/;
	  r = strText.search(strReg);
	  if(r == -1){
		  alert("手机格式不正确");
		  isOk=false;
	  }else{
		  isOk=true;
	  }
  }
  
 function isCon(Phone,Email){
	 if(isOk &&  Phone.value.length && Email.value.length){

		 return true;
	 }else{
		 alert("请确认正确后再提交！！！");
		 return false;
	 }
 } 	

 
  </script>





</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>欢迎加入我们</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			<form action="user/userLogin" method="post">
				<input type="text" name="userName" placeholder="用户名" required="">
				<input type="password" name="password" placeholder="密码" required="">
			<ul class="tick w3layouts agileits">
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>记住我</label>
				</li>
			</ul>
			<div class="send-button w3layouts agileits">
				
					<input type="submit" value="登 录">
				</form>
			</div>
			<ul>
			<li><a href="backView/adminLogin.jsp">管理员入口</a></li>
			<li>&nbsp;</li>
			<li><a href="user/blogSelectByUserId?flag=title&userId=0">游客入口</a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<div class="register w3layouts agileits">
			<h2>注 册</h2>
			<b style="color:white">${msg}</b>
			<form action="user/userRegister" method="post" onsubmit="return isCon(userEmail,userPhone)">
				<input type="text" id="userName" name="userName" placeholder="用户名" required="">
				<input type="text" name="userEmail" placeholder="邮箱" required="" onchange="checkemail(this)">
				<input type="password" name="Password" placeholder="密码" required="">
				<input type="text" name="userPhone" placeholder="手机号码" required="" onchange="checkphone(this)">
			<div class="send-button w3layouts agileits">
				
					<input type="submit" value="免费注册">
				</form>
			</div>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	<div class="footer w3layouts agileits">
	</div>

</body>
<!-- //Body -->

</html>