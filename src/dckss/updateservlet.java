package dckss;


import java.io.*; 
import java.sql.*; 
import javax.servlet.*; 
import javax.servlet.http.*; 

@SuppressWarnings("serial")
public class updateservlet extends HttpServlet    {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException    { 

        response.setContentType("text/html"); 
        PrintWriter out = response.getWriter(); 

        

        out.println("<html>"); 
            out.println("<head>"); 
                out.println("<title>User Data</title>"); 
            out.println("</head>"); 

            out.println("<body>"); 
                out.println("<center><u><h1>User Data</h1></u>"); 

                out.println("<form name='form' >"); 

                int a = 2; 
                out.println("<table border="+a+ "> "); 
                out.println("<tr>"); 
                out.println("<td> EmployeeID </td>");
                    out.println("<td> Name </td>"); 
                    out.println("<td> Gender</td>"); 
                    out.println("<td> Date_Of_Birth</td>"); 
                    out.println("<td> Email_ID</td>"); 
                    out.println("<td>MobileNo</td>"); 
                    out.println("<td> City</td>"); 
                    out.println("<td> Country</td>"); 
                    out.println("<td> Qualification</td>"); 
                    out.println("<td> Professional_Experience</td>"); 
                    out.println("<td> Designation</td>"); 
                    out.println("<td> Date_of_join</td>"); 
                out.println("</tr>"); 

				String e=request.getParameter("EmployeeID");

				String n=request.getParameter("Name");
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
                request.setAttribute("EmployeeID",e);

                request.setAttribute("Name",n);
                request.setAttribute("Gender", g);
                request.setAttribute("Date_Of_Birth", dob);
                request.setAttribute("Email_ID", ename);
                request.setAttribute("MoblieNo", b);
                request.setAttribute("City", city);
                request.setAttribute("Country", coun);
                request.setAttribute("Qualification", q);
                request.setAttribute("Professional_Experience", p);
                request.setAttribute("Designation", d);
                request.setAttribute("Date_of_join", doj);
                request.setAttribute("Work_of_experience",w);

                request.getRequestDispatcher("file_services.jsp").forward(request, response);

    }


    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException    {

        response.setContentType("text/html"); 

        PrintWriter pwinsert = response.getWriter(); 

        Connection con = null; 
        PreparedStatement pst = null; 

        try { 
            Class.forName("oracle.jdbc.driver.OracleDriver"); 
        } 
        catch(ClassNotFoundException ex)    { 
            System.out.println("driver not loaded"); 
            System.exit(0); 
        } 

        String URL = "jdbc:oracle:thin:@localhost:1521:XE";
        String Username = "system";
        String Password = "sai.baba";

        try { 
            con = DriverManager.getConnection(URL,Username,Password); 
            String e=request.getParameter("EmployeeID");
            String n=request.getParameter("Name");
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


            if(request.getParameter("choise")==null)    {
                pst = con.prepareStatement("update reg2 set Name=?,Gender=?,Date_Of_Birth=?',Email_ID=?,MobileNo=?,City=?,Country=?,Qualification=?,Professional_Experience=?,Designation=?,Date_of_join=? where EmployeeID=?"); 
                
                
    	        
                int i = pst.executeUpdate(); 
                pwinsert.println(i); 


                if(i!=0)    {
                    pwinsert.println("Your data has been stored in the database"); 
                    RequestDispatcher r=request.getRequestDispatcher("profile.jsp");
    				r.include(request, response);
                } 
                else    { 
                    pwinsert.println("Your data could not be stored in the database");
                } 
            }
        } 
        catch(Exception e)  { 
            pwinsert.println(e.getMessage()); 
        } 
    }
}