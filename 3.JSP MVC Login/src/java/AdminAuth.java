
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminAuth extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        System.out.println("Checking admin login");
        Connection conn = null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="messagepaging";
        String dbDriver="com.mysql.jdbc.Driver";
        String dbUser="root";
        String dbPass="";
        String username="";
        String userpass="";
        String strQuery="";
        Statement st=null;
        ResultSet rs=null;
        
        HttpSession session = request.getSession(true);
        
        try{
            Class.forName(dbDriver);
            conn=DriverManager.getConnection(url+dbName,dbUser,dbPass);
            username=request.getParameter("usrnm").toString();
            userpass=request.getParameter("pwd").toString();
            strQuery="select * from user where user='"+username+"' and password='"+userpass+"' ";
            System.out.println(strQuery);
            st=conn.createStatement();
            rs=st.executeQuery(strQuery);
            
            int count = 0;
            
            while(rs.next()){
                session.setAttribute("username", rs.getString(2));
                count++;
            }
            
            if(count>0){
                response.sendRedirect("adminHome.jsp");
            }else{
                request.setAttribute("err", "Login failed");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            
            
                    
        }catch(Exception e){
            throw new ServletException("login failed",e);
        } finally{
            
             try{
                    if(conn !=null){
                    conn.close();
                        }
             }catch(Exception exe){
                 exe.printStackTrace();
             }
            
            
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
