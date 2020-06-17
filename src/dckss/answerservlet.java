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
public class answerservlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 try
		 {
			 String ques=request.getParameter("ques");
			 String ans=request.getParameter("ans");		
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
			 Statement st=con.createStatement();
			 int x=st.executeUpdate("insert into answer6 values('"+ ques +"','"+ ans +"')");
			 out.println("posted successfully"+x);
			 RequestDispatcher r=request.getRequestDispatcher("answered.jsp");
				r.include(request, response);	 
		 }
		 catch(Exception e)
		 {
			e.printStackTrace();
		 }
		out.close();
	}

}
