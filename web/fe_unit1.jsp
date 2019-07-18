<%@page import="java.sql.*"%>

<%
    
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/sushil","root","1234");
    Statement st= con.createStatement();
    
    String sub=session.getAttribute("subject").toString();
    
    String qu=request.getParameter("q");
    String o1=request.getParameter("o1");
    String o2=request.getParameter("o2");
    String o3=request.getParameter("o3");
    String o4=request.getParameter("o4");
    String a=request.getParameter("a");
    String u=request.getParameter("Unit");
    
          if(sub.equals("chem"))  
          {st.executeUpdate("insert into chem values('"+ qu +"','"+ o1 +"','"+ o2 +"','"+o3+"','"+o4+"','"+a+"','"+u+"');");
            out.println("Question Added");
            %>
             <html>
        <body>
            <a href="s_test.jsp">Add next Question</a>
            
               </body>
             </html>
             <%
          }
    else if(sub.equals("M1"))
            {
            st.executeUpdate("insert into M1 values('"+ qu +"','"+ o1 +"','"+ o2 +"','"+o3+"','"+o4+"','"+a+"','"+u+"');");
            out.println("Question Added");
            %>
            <html>
            <body>
            <a href="s_test.jsp">Add next Question</a>
            
            </body>
            </html>
             <%
          }  
   %>
   