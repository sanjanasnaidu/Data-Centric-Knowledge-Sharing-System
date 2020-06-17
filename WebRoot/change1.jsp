<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'ChangePass.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/change.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    
    
	<script>
 function check() {
  if (document.getElementById('Password').value ==document.getElementById('confirm').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }
}
</script>
</head>
 <body>
	
	<form method="post" action="change2.jsp" OnSubmit="return fncSubmit();" id="passwordForm">
  <div class="container">
<div class="row">
<div class="col-sm-12">
<center><h1>Change Password</h1></center>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
<br/><br/><p class="text-center">Use the form below to change your password. Your password cannot be the same as your username.</p>
EmployeeID<input type="text" class="input-lg form-control" name="EmployeeID" id="password1" required=""><BR/>
Current Password<input type="password" class="input-lg form-control" name="Password" id="password1" required="">
<br/>New Password<input type="password" class="input-lg form-control" name="newpassword" id="password1" onkeyup='check();' required="">
<br/>Confirm Password<input type="password" class="input-lg form-control" name="confirmpassword" id="password2" onkeyup='check();' required="">
<br/><input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" value="Change Password" required="">
</div><!--/col-sm-6-->
</div><!--/row-->
</div>
</form>
	</body>
	
</html>

