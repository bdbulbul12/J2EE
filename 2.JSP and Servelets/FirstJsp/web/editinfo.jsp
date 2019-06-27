<%-- 
    Document   : editinfo
    Created on : Jun 28, 2019, 1:43:45 AM
    Author     : bulbul
--%>

<%@ page import="java.sql.*" %>
<%
    if((session.getAttribute("userid")==null) || session.getAttribute("userid")==""){ 
%>
you are not logged in</br>
<a href="index.jsp">please login</a>

<%} else {
    Class.forName("com.mysql.jdbc.Driver");
    String fname="",lname="",email="",pass="",regdate="";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginjdbc","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs=st.executeQuery("select first_name,last_name,email,password,regdate from user_info where user_name='"+session.getAttribute("userid") +"' ");
    
    while(rs.next()){
        fname=rs.getString("first_name");
        lname=rs.getString("last_name");
        email=rs.getString("email");
        pass=rs.getString("password");
        regdate = rs.getString("regdate");
    }
    
%>

<link href="css/default.css" rel="stylesheet">

<form action="edituser.jsp" method="POST">
    <center>
        <table border="1" width="30%" cellpadding="8" style="background: #ddd;">
            <thead>
                <tr>
                    <th colspan="2">Edit User Info</th>
                </tr> 
            </thead>
            <tbody>
                <tr>
                    <td>User Name</td>
                    <td><%=session.getAttribute("userid") %></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" value="<%=fname%>" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" value="<%=lname%>"/></td>
                </tr>
               
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="<%=email%>"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="pass" value=""/></td>
                </tr>
                <tr>
                    <td>Registered on</td>
                    <td><%=regdate%></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Edit" name="edit"</td>
                    <td><input type="submit" value="Delete" name="edit"</td>
                </tr>
            </tbody>
        </table>
    </center>
                <a href="success.jsp">Go Home</a>
                <a href="logout.jsp">Log out</a>
</form>

<% }%>