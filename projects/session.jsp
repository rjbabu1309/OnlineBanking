<%@ page import = "java.io.*,java.util.*" %>
<%
  if ((request.getSession(false)==null) 
    && (request.getParameter("username")== null))/*
    && request.getParameter("password") == null))*/ {
    response.sendRedirect("http://localhost:8080/projects/login.jsp");
     //then print out a HTML form to login
  
//if the session exists then allow the user to log off
}else if(request.getSession(false)!= null){
    Object username = (session.getAttribute("username"));
    out.println(username + " is logged in!");
    %> <a href="http://localhost:8080/projects/personal.html">Log off</a> <%
  
//else if the user has clicked on logoff then
}else if(request.getParameter("logoff") != null){
    session.removeAttribute("username");
    session.invalidate();
    response.sendRedirect("login.jsp");
  
//else if the details have been given then create the session
}else if (request.getParameter("username") != null
       && request.getParameter("password") != null){
    String username = request.getParameter("username");
    session = request.getSession(true);
    session.setAttribute("name", request.getParameter("username"));
    session.setMaxInactiveInterval(-1);
}
%>