<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'file_services.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="../favicon.ico">
		
<link rel="stylesheet" type="text/css" href="css/normalize1.css" />
		
<link rel="stylesheet" type="text/css" href="css/demo1.css" />
		
<link rel="stylesheet" type="text/css" href="css/icons1.css" />
		
<link rel="stylesheet" type="text/css" href="css/component1.css" />
		
<script src="js/modernizr.custom111.js"></script>
	
  </head>
  
  <body>
    <div id="st-container" class="st-container">

		
			
			

			
<nav class="st-menu st-effect-13" id="menu-13">
				
<h2 class="icon icon-stack">Articles</h2>
				
<ul>
					
<li><a href="post.jsp">Add an Article</a></li>
					
<li><a href="search.jsp">View Articles</a></li>
					
<li><a href="welcome.jsp">LogOut</a></li>
				
</ul>
			
</nav>

			

				
<div class="st-content"><!-- this is the wrapper for the content -->
					
<div class="st-content-inner"><!-- extra div for emulating position:fixed of the menu -->
						
<!-- Top Navigation -->
						
<header class="codrops-header">
							
<h1>DATA CENTRIC KNOWLEDGE SHARING SYSTEM</h1>
						
</header>
						
<div class="main clearfix">
			
<div id="st-trigger-effects" class="column">
				
								
<button data-effect="st-effect-13">Click here</button>
												
</div>
							
<div class="column">
		
<p>Articles</p>
								
<p>To View and Add an Article</p>
							
</div>
						
</div><!-- /main -->
					
</div><!-- /st-content-inner -->
				
</div><!-- /st-content -->
			
</div><!-- /st-pusher -->
		
</div><!-- /st-container -->
		
<script src="js/classie11.js"></script>
		
<script src="js/sidebarEffects.js"></script>
    
  </body>
</html>
