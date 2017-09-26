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

<link href="css/style.css" rel="stylesheet" type="text/css" />
 
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
</head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<body>

 <span class="main-border"></span>
                    
                    <h1 id="comment">发布博客</h1>
                    
                    <form class="contact_form" action="#" method="post" name="contact_form">
                    <ul style="list-style:none">
                        <li>
                            <textarea name="message" cols="40" rows="6" required ></textarea>
                        </li>
                        <li>
                            <button class="submit" type="submit">Submit</button>
                        </li>
                    </ul>
                </form>	
                <span class="main-border"></span>
                <table width="700" height="300" border="0" bgcolor="grey">
  <tr>
    <td width="291"><font size="+3">title</font></td>
    <td width="281">点赞人数</td>
    <td width="186"><img src=""></td>
  </tr>
  <tr>
    <td>user</td>
    <td>time</td>
    <td>comment</td>
  </tr>
  
  <tr>
    <td colspan="3" align="left">
	博客内容
	</td>
    
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="right"><a href="">更多</a></td>
  </tr>
</table>	
<span class="main-border"></span>
</body>
</html>