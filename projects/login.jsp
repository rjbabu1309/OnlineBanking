
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
	
        <%@ page import="java.sql.*"%>
<%
try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver"); 
         Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/raja?","root","raja@1997");    
        PreparedStatement pst = con.prepareStatement("select ac,username,password from customers where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())      
        {
            String nameGet = rs.getString("username");
            String passGet = rs.getString("password");
		      String ac=rs.getString("ac");
            if(username.equals(nameGet)&&password.equals(passGet))
            {
                 out.println("Valid login credentials");
                 session.setAttribute("username",username);
		session.setAttribute("ac",ac);
            response.sendRedirect("http://localhost:8080/projects/personal.jsp");
            }
           
        }     
                  
        else
           out.println("Invalid login credentials");
           %>
        <br>
        <a href="login.html"> Click here to retry</a>
        <%               
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
	
       
    </body>
</html>





