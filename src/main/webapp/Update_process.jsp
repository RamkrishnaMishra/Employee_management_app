<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost/ems";%>
<%!String user = "root";%>
<%!String psw = "mis~hra";%>
<%
String id = request.getParameter("id");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String joining_date=request.getParameter("joining_date");
String desgination = request.getParameter("desgination");
String email=request.getParameter("email");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set id=?,first_name=?,last_name=?,joining_date=?,desgination=?,email=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, first_name);
ps.setString(3, last_name);
ps.setString(4, email);
ps.setString(5, desgination);
ps.setString(6, joining_date);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>