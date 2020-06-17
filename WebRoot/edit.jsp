<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page language="java"%>
<%@page import="java.sql.*"%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'edit.jsp' starting page</title>
    
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
    <form method="post" action="update.jsp">
<table border="1">
<tr><th>Name</th><th>Username</th><th>Password</th><th>Gender</th><th>Date_Of_Birth</th><th>Email_ID</th><th>MobileNo</th><th>City</th><th>Country</th><th>Qualification</th><th>Professional_Experience</th><th>Designation</th><th>Date_of_join</th><th>Work_Experience</th></tr>
<%
String e=request.getParameter("EmployeeID");
int sumcount=0;
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","123456");
String query = "select * from reg10 where EmployeeID='"+e+"'";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="Name" value="<%=rs.getString("Name")%>"></td>
<td><input type="text" name="Username" value="<%=rs.getString("Username")%>"></td>
<td><input type="password" name="Password" value="<%=rs.getString("Password")%>"></td>
<td><input type="text" name="Gender" value="<%=rs.getString("Gender")%>"></td>
<td><input type="text" name="Date_Of_Birth" value="<%=rs.getString("Date_Of_Birth")%>"></td>
<td><input type="text" name="Email_ID" value="<%=rs.getString("Email_ID")%>"></td>
<td><input type="text" name="MobileNo" value="<%=rs.getString("MobileNo")%>"></td>
<td><input type="text" name="City" value="<%=rs.getString("City")%>"></td>
<td><input type="text" name="Country" value="<%=rs.getString("Country")%>"></td>
<td><input type="text" name="Qualification" value="<%=rs.getString("Qualification")%>"></td>
<td><input type="text" name="Professional_Experience" value="<%=rs.getString("Professional_Experience")%>"></td>
<td><input type="text" name="Designation" value="<%=rs.getString("Designation")%>"></td>
<td><input type="text" name="Date_of_join" value="<%=rs.getString("Date_of_join")%>"></td>
<td><input type="text" name="Work_of_experience" value="<%=rs.getString("Work_of_experience")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e1){e1.printStackTrace();}
%>
</table>
</form>
  </body>
</html>
