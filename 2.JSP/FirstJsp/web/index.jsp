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
        <h1>Hello World!</h1>
        <!-- Expression -->
        <%=(2+2)%>
        <p> Current Time is : <%=new java.util.Date()%></p>
        
        <!-- Declaration -->
        <%! int a = 5;%>
        <h1>The value of a is:  <%= a%></h1>
        
        <!-- Script lets Logical ----part here---  -->
        <% if(a>5) { %>
        <input type="text" value="Hello" placeholder="Hello"/>
        <% } else {%>
        <input type="button" value="ok"/>
        <%}%>
        
        
        
        
    </body>
</html>
