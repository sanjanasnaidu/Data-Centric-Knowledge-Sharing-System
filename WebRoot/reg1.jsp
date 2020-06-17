<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Bubble SignUp Form a Flat Responsive Widget Template :: w3layouts</title>
<base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bubble SignUp Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style007.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
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
function checkMailStatus(){
    //alert("came");
var email=$("#Email_ID").val();// value in field email
$.ajax({
    type:'post',
        url:'checkMail.jsp',// put your real file name 
        data:{email: email},
        success:function(msg){
        alert(msg); // your message will come here.     
        }
 });
}
</script>
<style>
option{background-color: #ce5b85 }
</style>
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>REGISTRATION FORM</h1>
		<div class="main-agileinfo">
			<div class="agileits-top"> 
				<form action="regg1servlet" method="post"> 
				    <script type="text/javascript" src="empidservlet"></script>
					
					<input class="text" type="text" name="EmployeeID" placeholder="Enter your Employee-ID" required=""><br/>
					<input class="text" type="text" name="Name" placeholder="Enter your Name" required=""><br/>
				    <input class="text" type="text" name="Username" placeholder="Enter your Username" required=""><br/>
					<input class="text" type="password" name="Password" placeholder="Type your Password" id="Password" onkeyup='check()' required="">
					<input class="text w3lpass" type="password" name="confirm" placeholder="Re-Type your Password" id="confirm" onkeyup='check();' required="">
					<span id='message'></span>
					<select style="width:429px;" name="Gender" placeholder="Specify your Gender" required="">
                    <option>----Select Gender----</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    </select><br/>
                    <input class="text" type="text" name="Date_Of_Birth" placeholder="Date of Birth in dd/mm/yyyy format" required="">
					<input class="text email" type="email" name="Email_ID" placeholder="Enter your Email-ID" id="Email_Id" onblur="checkMailStatus()" required="">
					<input class="text" type="text" name="MobileNo" placeholder="Enter your Mobile Number" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" required=""><br/>
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
					<input class="text" type="text" name="City" placeholder="Enter your City" required=""><br/>
					 <select name="Country" style="width:429px;"> 
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
                     <option value="Others">Others</option>
                     </select><br/>
                     <input class="text" type="text" name="Qualification" placeholder="Enter Your Qualification" required=""><br/>
                     <input class="text" type="text" name="Professional_Experience" placeholder="Professional Experience in terms of years" required="">
					 <br/><select style="width:429px;" name="Designation"> 
                     <option value="-1">----Select Designation----</option> 
                     <option value="Developer">Developer</option> 
                     <option value="Tester">Tester</option> 
                     <option value="Trainer">Trainer</option>
                     <option value="Programmer">Programmer</option> 
                     <option value="Others">Others</option> 
                     </select><br/>
                     <input class="text" type="text" name="Date_of_join" placeholder="Date of Join in dd/mm/yyyy format" required=""><br/>
					<div class="wthree-text">  
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span> 
						</label>  
						<p id="demo"></p>
						<div class="clear"> </div>
					</div>   
					<input type="submit" value="SIGNUP" id="send">
				</form>
				<p>Don't have an Account? <a href="login.jsp"> Login Now!</a></p>
			</div>	 
		</div>	
		<ul class="w3lsg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			
		</ul>
	</div>	
	<!-- //main --> 
</body>
</html>