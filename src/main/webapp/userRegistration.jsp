<%@ page import="java.sql.*"%>
<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/ems";
Connection conn = DriverManager.getConnection(url,"root","mis~hra");
Statement stmt = conn.createStatement();
int i = stmt.executeUpdate("insert into login_table (first_name, last_name, email, username, password, regdate) values ('" + firstName + "','"
+ lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
if (i > 0) {
response.sendRedirect("welcome.jsp");

} else {
response.sendRedirect("index.jsp");
}
%>