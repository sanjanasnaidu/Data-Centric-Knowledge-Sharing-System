<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkMail.jsp' starting page</title>
    
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
    <script type="text/javascript">
					function checkUsername()
{
  var username = document.getElementById('EmployeeID');
  var message = document.getElementById('confirmUsername');
  
  /*This is just to see how it works, remove this lines*/
  message.innerHTML = username.value;
  document.getElementById("send").disabled = true;  
  /*********************************************/

 $.ajax({ 
    url : "reg2.jsp",// your username checker url
    type : "POST",
    data : {username: username},        
    success:  function (response) {						
        if (response==0)
        {
              message.innerHTML = "Valid Username";
              document.getElementById("send").disabled = false;		
	}
	if (response==1)
	{
              message.innerHTML = "Already Used";
              document.getElementById("send").disabled = true;	
   	}
					
							
     }
 });					
}
</script>
  </body>
</html>
