<%-- 
    Document   : loginJsp
    Created on : Apr 3, 2018, 9:21:44 PM
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
        <jsp:useBean id="login" scope="request" class="pack1.LogBean" >
            <jsp:setProperty name="login" property="usrnm" value='<%=
                request.getParameter("usrnm") %>'/>
            <jsp:setProperty name="login" property="pwd" value='<%=
                request.getParameter("pwd") %>'/>    
        </jsp:useBean>
        
        <jsp:forward page="AdminAuth">
            <jsp:param name="usrnm" value="<%=login.getUsrnm() %>" />
            <jsp:param name="pwd" value="<%=login.getPwd() %>" />
        </jsp:forward>
    </body>
</html>
