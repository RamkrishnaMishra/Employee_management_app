 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: lightblue;
  text-overflow: ellipsis;
}

li {
  float: right;
}

li a {
  display: block;
  color: red;
  text-align: center;
  padding: 14px 14px;
  text-decoration: none;
}

li a:hover {
  background-color:lightgreen ;
}
</style>
</head>
<body>


<ul>
	<li><a href ="logout.jsp">LOGOUT</a></li>
 
  <li><a href="department.jsp">Department</a></li>
   <li><a href="Add_Employee.jsp">ADD Employee </li>
  
</ul>
<H1><center>Welcome to Home page </center></H1>
</body>
</html>
       <%
       Class.forName("com.mysql.jdbc.Driver");
       String url = "jdbc:mysql://localhost:3306/ems";
       Connection conn = DriverManager.getConnection(url,"root","mis~hra");
       Statement stmt = conn.createStatement();
          ResultSet rs;
          rs = stmt.executeQuery("select * from employee_table ");
       %>
       <%
		   if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
		%>
		You are not logged in<br/>
		<a href="index.jsp">Please Login</a>
		<%} else {
		%>
		<BODY background="homebg3.jpg">
		<br ><center>Employee details</center></br>
		
		
		<%
		  }
		%>

       <center>
      <TABLE BORDER="1">
      <TR>
     <TH>ID</TH>
      <TH>first_name</TH>
      <TH>last_name</TH>
      <TH>email</TH>
      <TH>desgination</TH>
      <TH>joining_date</TH>
      <TH>Action</TH>

      </TR>
      <% while(rs.next()){ %>
      <TR>
       <TD> <%= rs.getInt(1) %></Td>
       <TD> <%= rs.getString(2) %></Td>
       <TD> <%= rs.getString(3) %></TD>
       <TD> <%= rs.getString(4) %></TD>
       <TD> <%= rs.getString(5) %></TD>
       <TD> <%= rs.getString(6) %></TD>
       <TD><a href="update.jsp?ID=<%=rs.getString("ID") %>"><button type="button"  class="update">Update</button></a>
				
           <a href="delete.jsp?ID=<%=rs.getString("ID") %>"><button type="button"  class="delete">Delete</button></a></TD>
      </TR>
      <% } %>
     </TABLE>
     				
     </center>
     
    
     
</BODY>