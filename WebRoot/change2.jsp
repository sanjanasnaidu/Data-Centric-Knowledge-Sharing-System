<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String e = request.getParameter("EmployeeID");
String currentpassword = request.getParameter("Password");
String newpassword = request.getParameter("newpassword");
String confirmpassword = request.getParameter("confirmpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = ("jdbc:oracle:thin:@localhost:1521:XE");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from reg where EmployeeID='"+e+"' and Password= '"+ currentpassword + "'");
if (rs.next()) { 
pass = rs.getString("Password");
} 
if(newpassword.equals(confirmpassword))
{
if (pass.equals(currentpassword)) {
st = con.createStatement();
int i = st.executeUpdate("update reg10 set Password='"+ newpassword + "' where EmployeeID='"+e+"'");
out.println("Password changed successfully");
st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e1) {
out.println(e1);
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'msg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <style>
  body {
    background-image: url("images/bk1.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
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
   }
   
       </style>
  <body>
  <br />
  <br />
  <br />
  <br />
   <center>
    <a href="login.jsp">CLICK TO LOGIN WITH YOUR NEW PASSWORD</a><br />
    </center>
  </body>
</html>
