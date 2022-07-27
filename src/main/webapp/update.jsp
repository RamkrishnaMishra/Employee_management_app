<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String desgination = request.getParameter("desgination");
        String joining_date = request.getParameter("joining_date");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/ems","root","<password>");
        pst = con.prepareStatement("update records set  where id = ?,first_tname = ?,last_tname = ?,email = ?,desgination =?,joining_date= ?");
        pst.setString(1, id);
        pst.setString(2, first_name);
        pst.setString(3, last_name);
        pst.setString(4, email);
        pst.setString(5, desgination);
        pst.setString(6, joining_date);
        
         
        
        pst.executeUpdate();  
        
        %>
        
        <script>   
            alert("Record Updated");           
       </script>
    <%             
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        
    </head>
    <body background="homebg3.jpg">
    <center>
       <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Update Employee details </th>
                    </tr>
                </thead>
        
        
        <div class="row">
            <div class="col-sm-4">
                
                <form method="post" action="Update_process.jsp">
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/ems","root","mis~hra");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from employee_table where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                   <tbody>
                    <tr>
                        <td>ID</td>
                        <td><input type="int" name="ID" value="" /></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Desgination</td>
                        <td><input type="text" name="desgination" value="" /></td>
                    </tr>
                    <tr>
                        <td>Joining_date</td>
                        <td><input type="date" name="joining_date" value="" /></td>
                    </tr>   
                    <tr>

					<%
                     }
                    %>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href='Home_page.jsp'><button type="button"  class="Back to home">Back to Home</button></a></td>
                    </tr>
                </tbody>
            </table>
</center>
                             
                             
                       
  
                </form>
            </div>          
        </div>
  
    </body>
</html>
