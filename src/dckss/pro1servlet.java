package dckss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.sql.DatumWithConnection;

@SuppressWarnings("serial")
public class pro1servlet extends HttpServlet {

DatumWithConnection dbconn;

public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	PrintWriter out = response.getWriter();
	  String e=request.getParameter("EmployeeID");	
	  out.print("<body background-color:'#ecb0dc'");
      out.print("<h1><b><center>PROFILE</center></b></h1>");
	  out.print("<table border='1'><tr><th>EmployeeID</th><th>Name</th><th>Username</th><th>Password</th><th>Confirm Password</th><th>Gender</th><th>Date_Of_Birth</th><th>Email_ID</th><th>MobileNo</th><th>City</th><th>Country</th><th>Qualification</th><th>Professional_Experience</th><th>Designation</th><th>Date_of_join</th></tr>");
	  
	  try
	  {
	  
		  Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
			 Statement stmt=con.createStatement();
			 ResultSet  rs = stmt.executeQuery("select * from reg2 where EmployeeID="+e+"");
			if(rs.next())
			  {
			 out.print("<tr><td>");
			 out.print(rs.getString(1));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(2));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(3));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(4));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(5));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(6));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(7));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(8));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(9));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(10));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(11));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(12));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(13));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(14));
			 out.print("</td>");
			 out.print("<td>");
			 out.print(rs.getString(15));
			 out.print("</td>");
			 out.print("</tr>");
			  }	  
			else
			{
				out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("window.alert('EmployeeID does not exist');");
                out.println("});");
                out.println("</script>");
			}
	  } 
			  catch (Exception p) {
	 System.out.println(p);
	  }
			  out.print("</table>");
			  out.print("</body>");
}
	  
}
