package dckss;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class pro3servlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String e=request.getParameter("EmployeeID");  
	    Connection conn = null;
	    PreparedStatement pst = null;
	    try{

	    	Class.forName("oracle.jdbc.driver.OracleDriver");
		    conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
			pst = conn.prepareStatement("delete from reg2 where EmployeeID = ?");
			
	        pst.setString(1,e);

	        int i=pst.executeUpdate();
	        if (i>0){
				pw.println("<b style='font-size;35px;color='red''> YOUR PROFILE HAS BEEN DELETED..</b>");
				 RequestDispatcher r=request.getRequestDispatcher("welcome.jsp");
					r.include(request, response);
			}
			else{
				pw.println("Check the EmployeeID");
				RequestDispatcher r=request.getRequestDispatcher("pro3.jsp");
				r.include(request, response);
			}
	      }catch(Exception ex){
	        System.out.print(ex.getMessage());
	    }finally{
	        try {
				pst.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
	        try {
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
	    }
	
		}
		}
		  