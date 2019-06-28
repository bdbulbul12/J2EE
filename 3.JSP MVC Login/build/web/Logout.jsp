<%-- 
    Document   : Logout
    Created on : Apr 4, 2018, 12:01:37 AM
    Author     : bulbul
--%>

<% 
    session.setAttribute("username", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>