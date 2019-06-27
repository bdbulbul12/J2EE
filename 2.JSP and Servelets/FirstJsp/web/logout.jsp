<%-- 
    Document   : logout
    Created on : Jun 28, 2019, 1:44:46 AM
    Author     : bulbul
--%>

<% 
    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>