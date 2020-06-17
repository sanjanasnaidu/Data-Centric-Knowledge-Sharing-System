<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'profile.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700|Merriweather:400,700' rel='stylesheet' type='text/css'>

	
<link rel="stylesheet" href="css/reset9.css"> 
<!-- CSS reset -->
	
<link rel="stylesheet" href="css/style9.css"> 
<!-- Resource style -->
	
<script src="js/modernizr9.js"></script> <!-- Modernizr -->
 
  </head>
  
  <body>
  
  <main>
		
<h1>PROFILE</h1>

		
<p>YOUR PROFILE DETAILS...</p>
	
</main>

	
<a href="#cd-nav" class="cd-nav-trigger">Menu 
		
<span class="cd-nav-icon"></span>

		
<svg x="0px" y="0px" width="54px" height="54px" viewBox="0 0 54 54">
			
<circle fill="transparent" stroke="#656e79" stroke-width="1" cx="27" cy="27" r="25" stroke-dasharray="157 157" stroke-dashoffset="157"></circle>
		
</svg>
	
</a>
	
	
<div id="cd-nav" class="cd-nav">
		
<div class="cd-navigation-wrapper">
			
<div class="cd-half-block">
				
<h2>PROFILE</h2>

				
<nav>
					
<ul class="cd-primary-nav">
						
<li><a href="pro4.jsp" class="selected">View Profile</a></li>
												
<li><a href="pro3.jsp">Delete Profile</a></li>
						
<li><a href="welcome.jsp">LogOut</a></li>
											
</ul>
				
</nav>
			
</div><!-- .cd-half-block -->
			
			
<div class="cd-half-block">
			
</div> <!-- .cd-half-block -->
		
</div> <!-- .cd-navigation-wrapper -->
	
</div> <!-- .cd-nav -->
<script src="js/jquery-2.1.1.js"></script>

<script src="js/main9.js"></script> <!-- Resource jQuery -->
  
  
  </body>
</html>
