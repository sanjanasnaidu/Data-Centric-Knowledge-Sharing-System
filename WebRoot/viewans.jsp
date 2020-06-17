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
    
    <title>My JSP 'search.jsp' starting page</title>
    
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
</style>
  </head>
  
  <body>
  <form method="get" id="myForm">
  <br><br><center>
<h1>Answered Questions</h1><br/><br/>
<table align="center">
<tr><th>Question</th><th>Solution</th></tr>
<%

int sumcount=0;
Statement st;
String ques=request.getParameter("ques");
String ans=request.getParameter("ans");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
String query = "select * from answer6";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString("ques")%></td>
<td><textarea readonly rows=10 cols=100 name="ans"><%= rs.getString("ans")%></textarea></td>
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
</center>
</form>	
  </body>
</html>
