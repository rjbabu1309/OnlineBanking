<%@ page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
try{

	String name=request.getParameter("name");
		
		String fathername=request.getParameter("fathername");
		String aadhar=request.getParameter("aadhar");
		String mobile = request.getParameter("mobile");
		String dob=request.getParameter("dob");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String balance = request.getParameter("balance");
		String email=request.getParameter("email");
		String ac = request.getParameter("ac");
		String address=request.getParameter("address");
		
		if(username!=null && password != null)
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root","raja@1997");
	
	Statement st=con.createStatement();
	String sql="insert into customers "+"values"+"('"+name+"','"+fathername+"','"+username+"','"+password+"','"+email+"','"+ac+"','"+balance+"','"+dob+"','"+aadhar+"','"+mobile+"','"+address+"')";
	st.executeUpdate(sql);

	
	}



	catch(Exception e)
	{
	e.printStackTrace(response.getWriter());
	}
%>
 <%
         // New location to be redirected
         String site = new String("http://localhost:8080/projects/index.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
         %>