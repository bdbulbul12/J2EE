<%-- 
    Document   : registration
    Created on : Jun 28, 2019, 1:23:57 AM
    Author     : bulbul
--%>

<%@ page import="java.sql.*" %>

<% 
   String user =  request.getParameter("uName");
   String pwd = request.getParameter("regPassword");
   String fname = request.getParameter("fname");
   String lname=request.getParameter("lname");
   String email=request.getParameter("email");
   
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginjdbc","root","");
    Statement st = con.createStatement();
    //ResetSet
    int i = st.executeUpdate("INSERT INTO user_info(first_name,last_name,email,user_name,password,regdate)"
            + " VALUES('"+fname+"','"+lname+"','"+email+"','"+user+"','"+pwd+"',CURDATE())");
    
if(i>0){
    response.sendRedirect("welcome.jsp");
}else{
    response.sendRedirect("index.jsp");
}
%>
