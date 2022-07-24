 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

 
 <H1><center>Departments name </center></H1>
 
 
       <%
       Class.forName("com.mysql.jdbc.Driver");
       String url = "jdbc:mysql://localhost:3306/ems";
       Connection conn = DriverManager.getConnection(url,"root","mis~hra");
       Statement stmt = conn.createStatement();
          ResultSet rs;
          rs = stmt.executeQuery("select * from departments ");
       %>
 
		<BODY background="homebg3.jpg">
		<br ><center>Department details</center></br>
		
		<a href='Add_department.jsp'><button type="button"  class="ADD">ADD</button></a>&nbsp;&nbsp;&nbsp;
		
		


       <center>
      <TABLE BORDER="1">
      <TR>
     <TH>ID</TH>
      <TH>Departments</TH>
       <TH>Action</TH>

      </TR>
      <% while(rs.next()){ %>
      <TR>
       <TD> <%= rs.getInt(1) %></Td>
       <TD> <%= rs.getString(2) %></Td>

       <TD><a href="Delete_Departments.jsp?ID=<%=rs.getString("ID") %>"><button type="button"  class="delete">Delete</button></a></TD>
      </TR>
      <% } %>
     </TABLE>
     				
     </center>
     
</BODY>
<br><td><a href='Home_page.jsp'><button type="button"  class="Back to home">Back to Home</button></a></td></br>