<%-- 
    Document   : adminHome
    Created on : Apr 3, 2018, 10:21:43 PM
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
        <%-- Stop browser caching --%>
        <%
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setDateHeader("Expired", -1);
        %>
        <%
            if(session.getAttribute("username")!=null &&
                    session.getAttribute("username")!=""){
                String user = session.getAttribute("username").toString();
            
        %>
        <h1>Welcome <b><%= user %></b></h1>
        
        <%
            }else{
               out.println("Please enter corrct username and password");
               out.println("<a href='index.jsp'><br>Login again</a> ");
}
        %>
        
        <form method="POST" action="Logout.jsp">
            <input type="submit" value="Logout" />
        </form>
    </body>
</html>
