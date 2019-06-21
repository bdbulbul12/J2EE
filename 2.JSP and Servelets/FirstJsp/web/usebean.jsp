<%-- 
    Document   : usebean
    Created on : Jun 22, 2019, 1:19:02 AM
    Author     : bulbul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Use bean Example</h1>
        
        <jsp:useBean id="useBean" class="usebean.MessageBean" scope="request"></jsp:useBean>
        
        initial message using jsp:getProperty: <br></br>
        <jsp:getProperty name="useBean" property="message"></jsp:getProperty> <br></br>
        
        <jsp:setProperty name="useBean" property="message" value = "First Message" ></jsp:setProperty><br></br>
        
        initial message using jsp expressions: <br></br>
        <%= useBean.getMessage() %> <br></br>
        
        <% useBean.setMessage("Again set a meaage"); %><br></br>
        <%= useBean.getMessage()%> <br></br>
        
        
        
       
</html>
