<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'post.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
body {
    background-image: url("images/ask.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.col{
float:right;
width:25%;
padding:20px;
margin-right:100ox;
}
.mar{
margin-left:50px;
}
.text{
    width: 710px;  
    height: 2em;
}
</style>
  </head>
  
  <body>
  <form action="postservlet1" method="post">
  <center>
   <h1><u>Post your Article</u></h1>
   </center>
  <div class="col" style="background-color:#aaa;">
  <h3>What next?</h3>
<p>After posting an article or editing an existing article your changes will go into a moderation queue that experienced members will regularly review.</p>
<p>The review process is very quick and is in place to ensure that your article has the best chance of being positively received, as well as to provide protection from spammers.</p>
</div>
   <div class="mar">
   <h2>Submit a new Article</h2>
   <ol>
   <h3><u>Important note:</u></h3>
   <p><h4> Have you used someone else's material in your own work? Have you properly referenced it and given credit to the original author?<br/>If you do not properly cite your sources, your account and articles may be forfeit permanently.</h4></p>
  </ol>
  <br><br><br>
  <h3>Article Name</h3>
  <input type="text" name="article" style="width: 60em;height: 2em;"/>
  <h3>Please enter your Article</h3>
  <textarea name="post" rows="20" cols="100"></textarea>
  <br/><br/><input type="submit" value="Post Your Article" style=" background-color: #4CAF50;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;"/>
  </div>
  </form>
  </body>
</html>
