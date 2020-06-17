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
public class askqueservlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 try
		 {
			 String q=request.getParameter("question");		
			 String d=request.getParameter("describe");
			 String t=request.getParameter("tried");
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
			 Statement st=con.createStatement();
			 int x=st.executeUpdate("insert into ask12345 values('" + q + "','" + d+ "','" + t + "')");
			 out.println("posted successfully"+x);
			 RequestDispatcher r=request.getRequestDispatcher("queries.jsp");
				r.include(request, response);	 
		 }
		 catch(Exception e1)
		 {
			e1.printStackTrace();
		 }
		out.close();

	}

}
