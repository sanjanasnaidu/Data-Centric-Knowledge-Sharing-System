<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewpost.jsp' starting page</title>
    
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
  <table border="1">
<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
String query = "select * from employee where id='1'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>
<tr><td>Article No</td><td><input type="text" name="artno" value="<%=rs.getString("artno")%>"></td></tr>
<tr><td>Article Name</td><td><input type="text" name="article" style="width: 40em;height: 2em;" value="<%=rs.getString("article")%>"></td></tr>
<tr><td>Please enter your Article</td><td><textarea name="post" rows="20" cols="100" value="<%=rs.getInt("post")%>"></textarea></td></tr>
<%
}
}
catch(Exception e){}
%>
</table>
  </body>
</html>
