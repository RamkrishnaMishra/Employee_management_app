<%@ page import="java.sql.*"%>

<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/ems";
Connection conn = DriverManager.getConnection(url,"root","<password>");
Statement stmt = conn.createStatement();
ResultSet rs;
rs = stmt.executeQuery("select * from login_table where username='" + userName + "' and password='" +password + "'");
if (rs.next()) {
session.setAttribute("userid", userName);
response.sendRedirect("Home_page.jsp");
} else {
out.println("Invalid password <a href='index.jsp'>try again</a>");
}
%>
