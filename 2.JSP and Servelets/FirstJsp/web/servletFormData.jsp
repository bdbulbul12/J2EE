
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form1" action="handleFormData" method="post">
            <table border="1" width="50">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="name" value=""</td>
                    </tr>
                
                
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="pass" value=""</td>
                    </tr>
                    
                    
                </tbody>   
            </table> </br>
            <tr>
                <td><input type="submit" value="Submit"</td>  &nbsp;&nbsp; &nbsp;&nbsp; 
                <td><input type="reset" value="Reset"</td>
            </tr>
        </form>
    </body>
</html>
