<%@page import="java.sql.*"%>
<%
                
        if(session.getAttribute("s")==null)
        {
            response.sendRedirect("index.html");
        }
                String p=request.getParameter("Option");
                String sub=session.getAttribute("s").toString();
                if(p.equals("F.E"))
                {
                    //out.println("sbvhdfn");
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/sushil","root","1234");
                    Statement st= con.createStatement();
                    ResultSet rs=st.executeQuery("select * from FE;");
                    
                    %>
                    <html>
                        <body>
                            
                        </body>
                    </html>
                    <%
                    
                }
                
                  
                %>
          