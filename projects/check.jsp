<%@ page language="java" %>


<%@ page import = "java.io.*,java.util.*" %>
<%	try{
	if(request.getSession(false)== null){
		Object username = (session.getAttribute("username"));
    		out.println(username + " is logged in!");
		response.sendRedirect("http://localhost:8080/projects/personal.jsp");
		
	}
	else{
		response.sendRedirect("http://localhost:8080/projects/login.html");
	}

	/*String username = session.getAttribute("username").toString();
	if(username!=null){
		response.sendRedirect("http://localhost:8080/projects/personal.jsp");
	}*/
	}catch(Exception e){
		e.printStackTrace(response.getWriter());
	}
	
%>
