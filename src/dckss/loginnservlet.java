package dckss;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
public class loginnservlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String uu=request.getParameter("Username");  
	    String pp=request.getParameter("Password");  
	          
	    try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");	
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sai.baba");
			PreparedStatement ps=con.prepareStatement("Select Username,Password from reg2 where Username=? and Password=?");
			ps.setString(1,uu);
			ps.setString(2,pp);
			ResultSet rs = ps.executeQuery();
            if (rs.next()) {
        		request.getRequestDispatcher("home.jsp").include(request, response);
            } 
            else {
                request.getRequestDispatcher("login.jsp").include(request, response);  
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("window.alert('Incorrect username or password...Try again!!!');");
                out.println("});");
                out.println("</script>");
                }
        } 
				catch(Exception e2)
			{
				System.out.println(e2);
			}
	    out.close();  

		}
	}


