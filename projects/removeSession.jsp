<%@ page language="java" %>


<%@ page import = "java.io.*,java.util.*" %>
<%
	//Object username = (session.getAttribute("username"));
	session.removeAttribute("username");
	session.removeAttribute("ac");
	session.invalidate();
	response.sendRedirect("http://localhost:8080/projects/index.html");
	//out.println(username);
	//int AC = Ingetger.parseInt(request.getParameter("ac"));
	//int bal = Ingetger.parseInt(request.getParameter("bal"))
%>
