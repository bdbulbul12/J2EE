
package jdbc_connectivity;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.Statement;
import java.sql.ResultSet;


public class JDBC_Connectivity {

   public static void main(String[] args) {
        //Get Connection
         try{
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/messagepaging","root","");
            System.out.println("Connection Succesfull");
             //Create Statement
             Statement st = connection.createStatement();
             //Ex query
            //Resultset
            
            String query = "SELECT * FROM `user";
            ResultSet rs = st.executeQuery(query);
            
            rs.next();
            String name = rs.getString("password");
            System.out.println(name);
            
            
           
    }catch(Exception ex){
            ex.printStackTrace();
        }
     }
}