<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String ID=request.getParameter("ID");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/ems";
	Connection conn = DriverManager.getConnection(url,"root","mis~hra");
	Statement stmt = conn.createStatement();
int i=stmt.executeUpdate("DELETE FROM employee_table WHERE id="+ID);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<br><td><a href='Home_page.jsp'><button type="button"  class="Back to home">Back to Home</button></a></td></br>