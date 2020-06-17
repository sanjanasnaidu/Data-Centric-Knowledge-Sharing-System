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
   <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1111/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1111/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1111/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1111/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util1111.css">
	<link rel="stylesheet" type="text/css" href="css/main1111.css">
<!--===============================================================================================-->

  </head>
  
  <body>
  <form method="get" id="myForm">
  
<%

int sumcount=0;
Statement st;
String e=request.getParameter("EmployeeID");		
String n=request.getParameter("Name");
String nn=request.getParameter("Username");
String pp=request.getParameter("Password");
String co=request.getParameter("confirm");
String g=request.getParameter("Gender");
String dob=request.getParameter("Date_Of_Birth");
String ename=request.getParameter("Email_ID");
String b=request.getParameter("MobileNo");
String city=request.getParameter("City");
String coun=request.getParameter("Country");
String q=request.getParameter("Qualification");	
String p=request.getParameter("Professional_Experience");	
String d=request.getParameter("Designation");
String doj=request.getParameter("Date_of_join");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
String query = "select * from reg2 where EmployeeID="+e+"";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
if(rs.next()){
%>
<div class="limiter">
	<div class="container-table100">
    <h1 style="margin-top:-100px;" align="center">PROFILE</h1>
	<div class="wrap-table100" style="margin-top:-500px;">
	<div class="table100 ver1">
	<div class="table100-firstcol">
	<table>
	<thead>
	<tr class="row100 head">
	<th class="cell100 column1">EmployeeID</th>
	</tr>
	</thead>
	<tbody>
	<tr class="row100 body">
	<td class="cell100 column1"><%=rs.getString("EmployeeID")%></td>
	</tr></table>
	</div>
	<div class="wrap-table100-nextcols js-pscroll">
	<div class="table100-nextcols">
	<table>
	<thead>
	<tr class="row100 head">
	<th class="cell100 column2">Name</th>
	<th class="cell100 column3">Username</th>
	<th class="cell100 column4">Password</th>
	<th class="cell100 column5">Confirm Password</th>
	<th class="cell100 column6">Gender</th>
	<th class="cell100 column7">Date of Birth</th>
	<th class="cell100 column8">Email ID</th>
    <th class="cell100 column9">Mobile No</th>
    <th class="cell100 column10">City</th>
    <th class="cell100 column11">Country</th> 
    <th class="cell100 column12">Qualification</th>
    <th class="cell100 column13">Professional Experience</th>
    <th class="cell100 column14">Designation</th>
    <th class="cell100 column15">Date of join</th>
	</tr>
	</thead>
	<tbody>
	<tr class="row100 body">
	<td class="cell100 column2"><%=rs.getString("Name")%></td>
	<td class="cell100 column3"><%=rs.getString("Username")%></td>
	<td class="cell100 column4"><%=rs.getString("Password")%></td>
	<td class="cell100 column5"><%=rs.getString("confirm")%></td>
    <td class="cell100 column6"><%=rs.getString("Gender")%></td>
	<td class="cell100 column7"><%=rs.getString("Date_Of_Birth")%></td>
    <td class="cell100 column8"><%=rs.getString("Email_ID")%></td>
    <td class="cell100 column9"><%=rs.getString("MobileNo")%></td>
    <td class="cell100 column10"><%=rs.getString("City")%></td>
    <td class="cell100 column11"><%=rs.getString("Country")%></td>
    <td class="cell100 column12"><%=rs.getString("Qualification")%></td>
    <td class="cell100 column13"><%=rs.getString("Professional_Experience")%></td>
    <td class="cell100 column14"><%=rs.getString("Designation")%></td>
    <td class="cell100 column15"><%=rs.getString("Date_of_join")%></td>
	</tr>
    </tbody>
    </table>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>


<!--===============================================================================================-->	
	<script src="vendor1111/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1111/bootstrap/js/popper.js"></script>
	<script src="vendor1111/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1111/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1111/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})

			$(this).on('ps-x-reach-start', function(){
				$(this).parent().find('.table100-firstcol').removeClass('shadow-table100-firstcol');
			});

			$(this).on('ps-scroll-x', function(){
				$(this).parent().find('.table100-firstcol').addClass('shadow-table100-firstcol');
			});

		});

		
		
		
	</script>
<!--===============================================================================================-->
	<script src="js/main1111.js"></script>
<%
}
else
{
%>
EmployeeID does not exist
<% 
}
%>
<%
}
catch(Exception e1){
e1.printStackTrace();
}
%>
</form>	
  </body>
</html>
