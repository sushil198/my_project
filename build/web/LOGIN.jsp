
<%@page import="java.sql.*"%>

   <%
    
    
	String uname=request.getParameter("email");
	
	String password=request.getParameter("pass");
        
        String login=request.getParameter("Login");
        
      	
        if(login.equals("Teacher"))
        {   Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/sushil","root","1234");
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from teacher where Email='"+uname+"' and password='"+password+"'");
            try
            {
                rs.next();
                 String sub=rs.getString("Subject");
                if(rs.getString("Email").equals(uname) && rs.getString("password").equals(password) )
                { 
                   
                    out.println("<center><h1>Welcome Prof."+ uname+"</h1></center><br><br>"
                            + "<h2>Subject:"+sub+"</h2><br><br><br>");
                    out.println("<center><form action='s_test.jsp'><input type='submit' value='Schedule Test'></center>");
                    session.setAttribute("nm",uname);
                    session.setAttribute("s",sub);
                   
                }
                else
                {
                    out.println("invalid username or password");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        else if(login.equals("Student"))
        {
            {   Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/sushil","root","1234");
            Statement st= con.createStatement();
            ResultSet rs=st.executeQuery("select * from student where Email='"+uname+"' and password='"+password+"'");
            try
            {
                rs.next();
                if(rs.getString("Email").equals(uname) && rs.getString("password").equals(password) )
                {
                    out.println("Welcome " + uname+"<br><br>");
                    
                }
                else
                {
                    out.println("invalid username or password");
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            }
        }
      %>    
        
        
	
	
