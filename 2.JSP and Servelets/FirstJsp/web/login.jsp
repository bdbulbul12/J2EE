<%-- 
    Document   : login
    Created on : Jun 28, 2019, 1:36:15 AM
    Author     : bulbul
--%>

<%@ page import="java.sql.*" %>

<%
    String userid =  request.getParameter("uname");
    String pwd = request.getParameter("password");
   
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginjdbc","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs=st.executeQuery("select * from user_info where user_name='" + userid + "' and password='" + pwd +"'");
    
    if(rs.next()){
        session.setAttribute("userid", userid);
        response.sendRedirect("success.jsp");
    }else{
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    
%>

