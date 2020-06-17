<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="shortcut icon" href="../favicon.ico">
		
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		
<link rel="stylesheet" type="text/css" href="css/demo.css" />
		
<link rel="stylesheet" type="text/css" href="css/component.css" />
		
<!-- csstransforms3d-shiv-cssclasses-prefixed-teststyles-testprop-testallprops-prefixes-domprefixes-load --> 
		
<script src="js/modernizr.custom.25376.js"></script>
    
  </head>
  
  <body>
  <div id="perspective" class="perspective effect-airbnb">
  <font size="09">
		<p style="margin-left: 105px;"><strong>DATA CENTRIC KNOWLEDGE SHARING SYSTEM</strong></p>	</font>	
<div class="container">
				
<div class="wrapper"><!-- wrapper needed for scroll -->
					
<!-- Top Navigation -->
					
<div class="codrops-top clearfix">				
</div>
					
<div class="main clearfix">
						
<div class="column">
						
<p><button id="showMenu" style="margin-top:150px;">Show Menu</button></p>
							
<p>Click on this button</p>
	
  					
</div>
												
</div>
					
</div><!-- /main -->
			
</div><!-- wrapper -->
			
</div><!-- /container -->
			
<nav class="outer-nav left vertical">
				
<a href="emp_services.jsp" class="icon-news">Employee Services</a>
				
<a href="queries.jsp" class="icon-upload">Questions</a>
				
<a href="welcome.jsp" class="icon-star">LogOut</a>			
</nav>
		</div><!-- /perspective -->
		
<script src="js/classie.js"></script>
		
<script src="js/menu.js"></script>

  </body>
</html>
