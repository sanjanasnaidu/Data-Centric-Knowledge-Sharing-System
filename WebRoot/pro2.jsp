<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pro2.jsp' starting page</title>
    
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
  <form action="updateservlet" method="post">
  <center>
  <h1><b>DATA CENTRIC KNOWLEDGE SHARING SYSTEM</b></h1>
<input type="submit" value="UPDATE"/>
    <br> 
  
  </center>
  <center>
  <div class="content"><div class="main">
  <fieldset id="first" style="margin-top:-95px;margin-left:300px">
  <center>
  	<h2 class="fs-title">Update Profile<br></h2><br><br></center>
<table align="center">
 <tr>
<td><b>EmployeeID</b></td>
<td><input type="text" name="EmployeeID" style="width:180px;" required=""/></td>
</tr>
<tr>
<td><b>Name</b></td>
<td><input type="text" name="Name" style="width:180px;" required=""/></td>
</tr>
<tr>
<td><b>Gender</b></td>	
<td>
<select style="width:180px;" name="Gender" style="width:180px;" required="">
<option>----Select Gender----</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
<option value="Transgender">Trans-Gender</option>
</select>
</tr>
<tr>
<td><b>Date of Birth</b></td>
<td><input type="text" name="Date_Of_Birth" style="width:180px;" required=""/></td >
</tr>
<tr>
<td><b>E-mail ID</b></td>
<td><input type="text" name="Email_ID" style="width:180px;" required=""/></td>
</tr>
<tr>
<td><b>Mobile-No</b></td>
<td><input type="text" name="MobileNo" style="width:180px;" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" required=""/></td></tr>
<span id="error" style="color: Red; display: none">* Input digits (0 - 9)</span>
<script type="text/javascript">
                    var specialKeys = new Array();
                    specialKeys.push(8); //Backspace
                    function IsNumeric(e) {
                    var keyCode = e.which ? e.which : e.keyCode
                    var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                    document.getElementById("error").style.display = ret ? "none" : "inline";
                    return ret;
                    }
                    </script>

<tr>
<td><b>City</b></td>
<td><input type="text" name="City" style="width:180px;" required=""/></td>
</tr>
<tr>
<td><b>Country</b></td>
 <td>
 <select name="Country" style="width:180px;" required=""> 
<option>----Select Country-----</option> 
<option value="Australia">Australia</option> 
   <option value="Bangladesh">Bangladesh</option> 
   <option value="Canada">Canada</option> 
   <option value="Denmark">Denmark</option> 
   <option value="Europe">Europe</option> 
   <option value="Finland">Finland</option> 
   <option value="Greece">Greece</option> 
   <option value="Hongkong">Hongkong</option> 
   <option value="India">India</option> 
   <option value="Japan">Japan</option> 
   <option value="Bangladesh">Bangladesh</option> 
   <option value="London">London</option> 
   <option value="Malaysia">Malaysia</option> 
   <option value="Newjersy">Newjersy</option> 
   <option value="Philippines">Philippines</option>  
   <option value="Russia">Russia</option> 
   <option value="Switzerland">Switzerland</option> 
   <option value="Thailand">Thailand</option> 
   <option value="Vennice">Vennice</option> 
   <option value="Washington">Washington</option>
</select>
 </td>
 </tr>
 <tr>
<td><b>Qualification</b></td>
<td><input type="text" name="Qualification" style="width:180px;" required=""/></td>
</tr>
<tr>
<td><b>Professional Experience</b></td>
<td><input type="text" name="Professional_Experience" style="width:180px;" required=""/></td>
</tr>
<tr>
<td><b>Designation</b></td>
<td><select class="form-control" style="width: 180px;" name="designation" required=""> 
   <option value="-1">Select Designation</option> 
   <option value="Developer">Developer</option> 
   <option value="Tester">Tester</option> 
   <option value="Programmer">Programmer</option> 
   <option value="Others">Others</option>
   
   </select> </td>
</tr>
<tr>
<td><b>Date of Join</b></td>
<td><input type="text" name="Date_of_join" style="width:180px;" required=""/></td> 
</tr> 
</table>

</fieldset>
</div>
</div>
</center>
</form>

  
  </body>
</html>
  
  