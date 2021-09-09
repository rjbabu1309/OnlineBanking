<%@ page import="java.sql.*"%>

<%
try{
    //out.println("hello");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raja","root","raja@1997");
    //System.out.println("Your Available Balance");

    String username = session.getAttribute("username").toString();
    String ac = session.getAttribute("ac").toString();
    


    PreparedStatement st=con.prepareStatement("select * from customers where username=?");
	st.setString(1, username);
	ResultSet rs=st.executeQuery();
  
  //from user
   int bal1=Integer.parseInt(request.getParameter("amt"));
   if(bal1<=0){
   response.sendRedirect("http://localhost:8080/projects/fundTrans.html");
}
   if(rs.next()){
   int bal=Integer.parseInt(rs.getString("balance"));
   if(bal<bal1){
   			response.sendRedirect("http://localhost:8080/projects/fundNotAvailable.html");
	}
   bal=bal-bal1;
   String bl=Integer.toString(bal);
   out.println(bal);
   PreparedStatement st1=con.prepareStatement("update customers set balance=? where ac=?");
   st1.setString(1, bl);
   st1.setString(2, ac);
	int rs1=st1.executeUpdate();
}

	String getAC = request.getParameter("ac");
	//out.println(getAC);
	PreparedStatement st2=con.prepareStatement("select * from customers where ac=?");
	st2.setString(1, getAC);
	ResultSet rs2=st2.executeQuery();
	//int bal2=Integer.parseInt(rs2.getString("balance"));
	if(rs2.next()){
	int bal5=Integer.parseInt(rs.getString("balance"));
	int setBal=bal1+bal5;
	//out.println(setBal);
	String blSet=Integer.toString(setBal);

	PreparedStatement st3=con.prepareStatement("update customers set balance=? where ac=?");
   st3.setString(1, blSet);
   st3.setString(2, getAC);
	int rs9=st3.executeUpdate();
}
%>
    <center>
    	<h1>Your transection is Sucessful</h1>
    	<h2>Thanks for the Patience</h2>
    	<a href="http://localhost:8080/projects/personal.jsp">
    </center>
    <%  
    while(rs.next()){
    %>  
    <tr>
    <td><%=rs.getInt("balance")%></td>
    <!--<td><%=rs.getString("name")%></td>-->
    </tr>
                            
    <%
    }
    %>
    </table>
    <a href="http://localhost:8080/projects/personal.jsp">Back</a>
    <%
    }
    catch(Exception e)
    {
    e.printStackTrace(response.getWriter());
    }
%>