<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/style6.css">
<style>
a:link, a:visited {
    background-color:  #76d7c4 ;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: #0e6655 ;
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   height:170px;
   background-color: #45b39d  ;
   color: black;
   text-align: center;
}
</style>
  
  </head>
  <body>
  <img height="147" width="100%" src="images/Capture1.PNG">
  <div class="wrapper">
	
<div class="container">
		
<font size="8">Welcome</font>
		
		
<form class="form">
			
<font face="Comic Sans MS">
<a href="reg1.jsp">REGISTER</a>
			
<a href="login.jsp" style="margin-left:20px">LOGIN</a>

<a href="about.jsp" style="margin-left:20px">About Us</a>
	</font>	
</form>
	
</div>
	
	
<ul class="bg-bubbles">
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
		
<li></li>
	
</ul>
</div>
  
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    
<script  src="js/index.js"></script>
<div class="footer">
<p style="margin-top:100px">
<font size="5"><strong>© 2018 DCKSS ALL RIGHTS RESERVED</strong></font></p>
</div>
  </body>
</html>
