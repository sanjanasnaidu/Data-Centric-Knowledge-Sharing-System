package dckss;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class pro2servlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	          
	            
	        String e=request.getParameter("EmployeeID");		
			String n=request.getParameter("Name");
			String nn=request.getParameter("Username");
			String pp=request.getParameter("Password");
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
			String w=request.getParameter("Work_of_experience");
	        PreparedStatement pst = null;
	         try{
	        Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sai.baba");
	        pst = con.prepareStatement("update reg1 set Name='"+n+"',Username='"+nn+"',Password='"+pp+"',Gender='"+g+"',Date_Of_Birth='"+dob+"',Email_ID='"+ename+"',MobileNo='"+b+"',City='"+city+"',Country='"+coun+"',Qualification='"+q+"',Professional_Experience='"+p+"',Designation='"+d+"',Date_of_join='"+doj+"',Work_of_experience='"+w+"' where EmployeeID =?");  
	        pst.setString(1,e);  
	        pst.setString(2,n);  
	        pst.setString(3,nn);  
	        pst.setString(4,pp);
	        pst.setString(5,g);  
	        pst.setString(6,dob);
	        pst.setString(7,ename);  
	        pst.setString(8,b);
	        pst.setString(9,city);  
	        pst.setString(10,coun);
	        pst.setString(11,q);  
	        pst.setString(12,p);
	        pst.setString(13,d);  
	        pst.setString(14,doj);
	        pst.setString(15,w);  
	        int i = pst.executeUpdate(); 

            if(i!=0)    {
                out.println("Your data has been updated"); 
                RequestDispatcher r=request.getRequestDispatcher("pro2.jsp");
				r.include(request, response);
            } 
            else    { 
                out.println("Your data could not been updated"); 
                RequestDispatcher r=request.getRequestDispatcher("pro2.jsp");
				r.include(request, response);
            } 
	         }
	         catch(Exception ex){
	        	 ex.printStackTrace();
	         }
	        out.close();   
	}

}
