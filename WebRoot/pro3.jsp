<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pro3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/style11.css" rel="stylesheet" type="text/css">
<!-- Including JS File Here -->
<script src="js/multi_step_form.js" type="text/javascript"></script>
  </head>
  
  <body>
  <form action="pro3servlet" method="post">
  <center>
  <h1><b>DATA CENTRIC KNOWLEDGE SHARING SYSTEM</b></h1>
 <br/><br/><br/>
  </center>
  <center>
  <div class="content"><div class="main">
  <fieldset id="first" style="margin-top:-95px;margin-left:300px">
  <center>
  	<h2 class="fs-title">Delete Profile<br></h2><br><br></center>
<table align="center">
 <tr>
<td><b>EmployeeID</b></td>
<td><input type="text" name="EmployeeID" style="width:180px;"/></td>
</tr>
</table>
<input type="submit" value="DELETE"/><br>
</fieldset>
</div>
</div>
</center>
</form>
</body>
</html>
