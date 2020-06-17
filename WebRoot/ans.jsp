<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ans.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	.col{
float:right;
width:25%;
padding:20px;
margin-right:100ox;
}
body {
    background-image: url("images/ask.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.text
{
height:2em;
width:500px;
}
</style>
  </head>
  
  <body>
  <form action="answerservlet" method="post">
  <div class="col" style="background-color:#aaa;">
  <h3>What next?</h3>
<p> TO ANSWER THE RESPECTIVE QUESTION : </p>
<p>COPY AND PASTE THE QUESTION ALONG WITH ITS QUESTION NUMBER.</p>
</div>
  <center><h1><b><u>Answer The Questions</u></b></h1><br/><br/></center>
   <h2>Question &nbsp; &nbsp; &nbsp; 
   <input type="text" name="ques" class="text"/></h2>
   <h2>Answer</h2>
     <textarea name="ans" rows="20" cols="100"></textarea><br/><br/><br/>
     <input type="submit" value="Post Your Answers" style=" background-color: #4CAF50;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;"/>
  </form>
  </body>
</html>
