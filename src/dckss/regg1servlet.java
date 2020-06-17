package dckss;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class regg1servlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 try
		 {
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
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
			 Statement st=con.createStatement();
			 st.executeUpdate("insert into reg2 values('" + e + "','" + n+ "','" + nn + "','" + pp + "','"+co+"','" + g + "','" + dob + "','" + ename + "','" + b + "','" + city + "','" + coun + "','"+q+"','"+p+"','"+d+"','"+doj+"')");
			 RequestDispatcher r=request.getRequestDispatcher("login.jsp");
			 out.println("<script>");
             out.println("$(document).ready(function(){");
             out.println("window.alert('Registered successfully...Now you can login using your username and password!!!');");
             out.println("});");
             out.println("</script>");
				r.include(request, response);	 
		 }
		 catch(Exception e)
		 {
			
		 }
		out.close();

	}

}


		
	