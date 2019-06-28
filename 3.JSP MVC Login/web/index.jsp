<%-- 
    Document   : index
    Created on : Apr 3, 2018, 8:58:53 PM
    Author     : bulbul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC Login</title>
        <style type="text/css">
            div#adminlogin{
                width:30%;
                height:50%;
                background-color: #AFC7C7;
                border-width: thin;
                border-style: solid;
                border-color: #000;
                margin: 0 auto;
                text-align: left;
                overflow: hidden;
                padding: 5px;
                padding-left: 20px;
                margin-top: 100px;
            }
            .inputtext{
                width: 250px;
                height: 30px;
                font-family: Arial;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <div id="adminlogin">
            <p>Administration Login</p>
            <hr/>
            <form action="loginJsp.jsp" method="POST">
                <label>User Name </br>
                    <input type="text" class="inputtext" name="usrnm" value="" 
                           placeholder="Your Name"/></label> <br/>
                <br/>
                           
                <label>Password<br/>
                    <input type="password" class="inputtext" name="pwd"
                           placeholder="******"/></label> <br/>
                <br/>
                <input type="submit" value="Login"/>
                
                <%if(request.getAttribute("err")!=null) {%>
                <%=request.getAttribute("err") %>
                <% } %>
            </form>
        </div>
    </body>
</html>
