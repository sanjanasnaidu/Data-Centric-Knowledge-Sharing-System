package dckss;

import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class forgotservlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		@SuppressWarnings("unused")
		PrintWriter out = response.getWriter();
		String pp=request.getParameter("Password");
		String e=request.getParameter("EmployeeID");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");	
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sai.baba");
			PreparedStatement ps=con.prepareStatement("update reg set Password=? where EmployeeID=?");
			ps.setString(1,pp);
			ps.setString(2,e);
			int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("login.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
		}
		catch(Exception e1){
			e1.printStackTrace();
		}
	}


	}
