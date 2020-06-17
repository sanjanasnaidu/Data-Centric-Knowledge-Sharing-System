<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'askques.jsp' starting page</title>
    
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
.text{
    width: 570px;  
    height: 2em;
}
.col{
float:right;
width:25%;
padding:10px;
margin-right:100px;
}
.left{
margin-left:50px;
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
  </head>
  
  <body>
  <form action="askqueservlet" method="post">
   <center><h1><u>Post your Questions</u></h1><br><br></center>
   <div class="col" style="background-color:#aaa">
   <p>
    <ul><li>A few rules when you are posting a question.</li></ul>
    <ol type="1">
   <li><strong>Be Courteous</strong>. Everyone here helps because they enjoy helping, not because it's their job.</li>
    <li> Have you<strong> searched</strong> or Googled for a solution?</li>
    <li><strong>Be specific</strong>! eg "How do I change the dialog colour?" instead of "My code doesn't work. Help?"</li>
    <li><strong>Tag your question</strong> appropriately.</li>
    <li><strong>Do not remove or empty a message</strong> if others have replied.</li>
    </ol>
    </p>
    </div>
    <div class="left">
   <h2><u>1.Ask a Question</u></h2>
   <h3>Question &nbsp;&nbsp; 
    <input type="text" name="question" placeholder="How do I..." class="text" required=""/></h3><br/>
    <h2><u>2.Describe the problem</u></h2>
    <textarea name="describe" rows="15" cols="80" required=""></textarea><br/><br/>
    <h2><u>3.What have you tried?</u></h2>
     <textarea name="tried" rows="15" cols="80" reuired=""></textarea><br/><br/><br/>
     <input type="submit" value="Post Your Questions" style=" background-color: #4CAF50;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;"/>
     </div>
     </form>
  </body>
</html>
