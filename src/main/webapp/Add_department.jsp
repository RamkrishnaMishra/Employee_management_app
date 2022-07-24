<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Department_Registration</title>
</head>
<body background="4321922.jpg">
        <form method="post" action="Department_registration.jsp">
            <center>
<table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Department details </th>
                    </tr>
                </thead>
                <tbody>
						<tr>
                        <td>ID</td>
                        <td><input type="int" name="ID" value="" /></td>
                    </tr>

                    <tr>
                        <td>Departments</td>
                        <td><input type="text" name="departments" value="" /></td>
                    </tr>
                   
                   
                   
                    
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href='department.jsp'><button type="button"  class="Back to home">Back to Department page</button></a></td>
                    </tr>
                </tbody>
            </table>
           

            </center>
        </form>
    </body>
</html>