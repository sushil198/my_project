<%@page import="java.sql.*"%>
<html>
    <head>
    <body>
        <%
            String uname=session.getAttribute("nm").toString();
            String sub=session.getAttribute("s").toString();
            out.println("<center><h1>Prof."+uname+"</h1><br><br>");
                           
            out.println("<h3>Subject:"+sub+"</h3>");
            session.setAttribute("s",sub);
            %>
            
            <form action='s_test1.jsp'>Select Year:
                    <select name='Option'>
                    
                     <option >F.E</option>
                     <option >S.E</option>
                     <option >T.E</option>
                     <option >B.E</option></select>
                
                
                <br>
                <input type="submit" value="Start">
            </form>
            
                
                
      
            
          
            
    </body>
    </head>
</html>
        
        
    