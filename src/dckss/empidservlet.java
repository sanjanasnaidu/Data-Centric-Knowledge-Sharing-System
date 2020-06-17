package dckss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class empidservlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
        String e=request.getParameter("EmployeeID");
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
            PreparedStatement ps=conn.prepareStatement("select * from reg2 where EmployeeID=?");
            ps.setString(1,e);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                out.println("<font color='green'>");
                out.println("UserName  available");
                out.println("</font>");
                }
            else{
                out.println("<font color='red'>");
                out.println("UserName is not available");
                out.println("</font>");
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
		
	}

}
