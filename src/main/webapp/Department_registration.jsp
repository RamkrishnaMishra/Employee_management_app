<%@ page import="java.sql.*"%>
<%
String ID = request.getParameter("ID");

String departments = request.getParameter("departments");

String url = "jdbc:mysql://localhost:3306/ems";
Connection conn = DriverManager.getConnection(url,"root","<password>");
Statement stmt = conn.createStatement();
int i = stmt.executeUpdate("insert into departments (ID,departments) values ('"+ ID +"','" + departments + "')");
if (i > 0) {
response.sendRedirect("Welcome2.jsp");

} else {
response.sendRedirect("department.jsp");
}
%>
