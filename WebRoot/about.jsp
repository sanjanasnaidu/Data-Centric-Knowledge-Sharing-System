<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'about.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
</style>
  </head>
  
  <body>
   <img height="147" width="100%" src="images/Capture1.PNG">
       <font face="Comic Sans MS" size="4" color="#15B0AB">
<P>DATA CENTRIC KNOWLEDGE SHARING SYSTEM (DCKSS) is to centralise knowledge generated by employees working within and across functional areas, and to organise that knowledge such that it can be easily accessed, searched, browsed, navigated.</P>
<P><abbr title="DATA CENTRIC KNOWLEDGE SHARING SYSTEM">DCKSS</abbr> is a web based application which allows employees of a company to share their knowledge with others in the company. Also it allows them to search for knowledge assets when in need.</P>  
<P>It provides a facility to share your knowledge by submitting various knowledge assets and to search for assets when in need. It allows users to search documents based on keywords as well as name of the author, topic, category etc.</P>
<p>It allows the employees to post queries and post solution to queries.</p> </font> 
<a href="welcome.jsp">BACK</a>
  </body>
</html>
