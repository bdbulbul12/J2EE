<%-- 
    Document   : edituser
    Created on : Jun 28, 2019, 1:43:20 AM
    Author     : bulbul
--%>


<%@ page import="java.sql.*" %>
<%
    if((session.getAttribute("userid")==null) || session.getAttribute("userid")==""){ 
%>
you are not logged in</br>
<a href="index.jsp">please login</a>

<%} else { 
    String action = request.getParameter("edit");
    System.out.println(action);

    if(action.equals("Edit")){
        System.out.println("editttttttt");
        String fname=request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");

    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginjdbc","root","");
    Statement st = con.createStatement();

    String query = "update user_info set first_name='"+fname+"',last_name='"+lname+"',"
    + "email='"+email+"',password='"+pass+"' "
    + "where user_name='"+session.getAttribute("userid") +"' ";

    System.out.println(query);

    int i =st.executeUpdate(query);

    if(i>0){
         
        response.sendRedirect("editinfo.jsp");
    }else{
        out.print("Edit unsuccesful"+"<a href='editinfo.jsp'>Go to edit again</a>");
    }
    }else{
        out.print("you no permissoin to delete"+"<a href='editinfo.jsp'>Go to edit the page</a>");
    }
}%>
