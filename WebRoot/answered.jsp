<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'answered.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
th{
background-color:#4CAF50;
}
tr:hover {background-color:#f5f5f5;}
.text{
    width: 20em;  
    height: 2em;
    background-color:rgba(0, 0, 0, 0);
    border: none;
    outline:none;
}
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
  <form method="get" id="myForm">
  <br><br><center>
<h1>Unanswered Questions</h1><br/><br/>
<table align="center">
<tr><th>Questions Asked</th><th>Problem description</th><th>Tried code</th></tr>
<%

int sumcount=0;
Statement st;
String q=request.getParameter("question");		
String d=request.getParameter("describe");
String t=request.getParameter("tried");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
String query = "select * from ask12345";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr>
<td><input readonly type="text" class="text" name="question" value="<%=rs.getString("question")%>"/></td>
<td><textarea readonly rows=10 cols=75 name="describe"><%= rs.getString("describe")%></textarea></td>
<td><textarea readonly rows=10 cols=75 name="tried"><%= rs.getString("tried")%></textarea></td>
</tr>

<%
}
%>
<%
}
catch(Exception e1){
e1.printStackTrace();
}
%>
</table>
</center><br/><br/>
</form>	
<a href="ans.jsp" style=" background-color: #4CAF50;border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;">Click Here to Answer</a>
</body>
</html>
