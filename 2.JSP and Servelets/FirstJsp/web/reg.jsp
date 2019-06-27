<%-- 
    Document   : reg
    Created on : Jun 28, 2019, 1:21:08 AM
    Author     : bulbul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form  name="form1" action="registration.jsp" method="post">
            
            <table border="1" width="20%"  cellpadding="8" align="center" style="margin-top:100px;">
                <thead>
                    <tr>
                        <th colspan="2">Register Here</th>
                    </tr>
                </thead>
                
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text"  name="fname" value=""</td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text"  name="lname" value=""</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email"  name="email" value=""</td>
                    </tr>
                    
                    <tr>
                        <td>User Name</td>
                        <td><input type="text"  name="uName" value=""</td>
                    </tr>
                    
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="regPassword" value=""</td>
                    </tr>
                    
                    
                    <tr>
                        <td><input type="submit" name="submit" value="Submit"</td>
                        <td><input type="reset" name="reset" value="Reset"</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">Already Registered?<a href="index.jsp"> Click here</td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
