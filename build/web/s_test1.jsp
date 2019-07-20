<%@page import="java.sql.*"%>
<%
                
        if(session.getAttribute("nm")==null)
        {
            response.sendRedirect("index.html");
        }
                String p=request.getParameter("Option");
                String u=request.getParameter("Unit");
                String sub=session.getAttribute("s").toString();
                if(p.equals("F.E"))
                {
                    
                                %>
                                <html>
                                    <body>
                                        <form action="fe_unit1.jsp">
                                            Enter Question:<input type="textarea" name ="q"><br>
                                            Enter option 1:<input type="text" name="o1"><br>
                                            Enter option 2:<input type="text" name="o2"><br>
                                            Enter option 3:<input type="text" name="o3"><br>
                                            Enter option 4:<input type="text" name="o4"><br>
                                            Enter Answer:<input type="text" name="a"><br>
                                            
                                            <br>
                                            Slect Unit:
                                            <select name="Unit">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                
                                            </select>
                                            <input type="submit" value="next">
                                        </form>
                                    </body>
                                </html>
                                <%
                                
                                    
                        session.setAttribute("subject",sub);
                        
                    
                    }
                
                
                  
                %>
          