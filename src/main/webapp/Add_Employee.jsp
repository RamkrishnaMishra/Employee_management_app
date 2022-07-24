<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee_Registration</title>
</head>
<body background="4321922.jpg">
        <form method="post" action="Emp_registration.jsp">
            <center>
<table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Employee details </th>
                    </tr>
                </thead>
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
    </body>
</html>