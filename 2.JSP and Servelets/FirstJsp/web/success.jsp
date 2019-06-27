<%-- 
    Document   : success
    Created on : Jun 28, 2019, 1:39:37 AM
    Author     : bulbul
--%>

<%
    if((session.getAttribute("userid")==null) || session.getAttribute("userid")==""){ 
%>

you are not logged in</br>

<a href="index.jsp">please login</a>

<%} else {
%>
Welcome <%=session.getAttribute("userid")   %>

<a href='editinfo.jsp'>Edit Information</a> </br> </br>
<a href='logout.jsp'>Logout</a>

<% 
    }
%>


