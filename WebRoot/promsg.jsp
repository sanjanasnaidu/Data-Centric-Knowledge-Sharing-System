<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'promsg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    
  </head>
  
  <body>
    <font size="+2"><b><em><font face="Broadway" color="#000099"><br></font></em>
  <center>
  <h1><br><br><br><u>DATA CENTRIC KNOWLEGDE SHARING SYSTEM</u></h1>
  <h3><em>UPDATED SUCCESSFULLY..</em></h3>
  </center>
  <h5><marquee direction="left">PLEASE MAINTAIN THESE DETAILS AS CONFIDENTIAL!!!</marquee></h5>
  </b>
  </font>
  <a href="profile.jsp">Back</a>
  </body>
</html>
