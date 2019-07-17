<%@page import="java.sql.*"%>

<%
    
    
	String name=request.getParameter("t1");
	String email=request.getParameter("t3");
        String s=request.getParameter("sub");
	String password=request.getParameter("p1");
	String cpassword=request.getParameter("p2");
        if(password.equals(cpassword))
        {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/sushil","root","1234");
            Statement st= con.createStatement();
            st.executeUpdate("insert into teacher values('"+ name +"','"+ email +"','"+ s +"','"+ password +"' );");
            out.println("succesfully registerd!Please <a href='index.html'>Login</a> to continue.");
        }
        else
        {
            out.println("Confirm PassWord Not Matching");
        }
	
	
%>

