<%@ page import="java.sql.*"%>
<%
String ID = request.getParameter("ID");
String desgination = request.getParameter("desgination");
String joining_date = request.getParameter("joining_date");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/ems";
Connection conn = DriverManager.getConnection(url,"root","mis~hra");
Statement stmt = conn.createStatement();
int i = stmt.executeUpdate("insert into employee_table (first_name, last_name, email, desgination, joining_date, ID) values ('" + firstName + "','"
+ lastName + "','" + email + "','" + desgination + "','" + joining_date + "','"+ ID +"')");
if (i > 0) {
response.sendRedirect("Home_page.jsp");

} else {
response.sendRedirect("Add_Employee.jsp");
}
%>