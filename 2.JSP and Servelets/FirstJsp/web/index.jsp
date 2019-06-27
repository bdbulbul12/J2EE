<%-- 
    Document   : index
    Created on : Jun 22, 2019, 12:40:58 AM
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
        <form  name="form1" action="login.jsp" method="post">
            
            <table border="1" width="25%"  cellpadding="8" align="center" style="margin-top:100px;">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text"  name="uname" value=""</td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value=""</td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" name="submit" value="Submit"</td>
                        <td><input type="reset" name="reset" value="Reset"</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center">Do not Register<a href="reg.jsp"> Click here</td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
