  
package university.management.system;

import java.sql.*;  

public class conn{
    Connection c;
 public   Statement s;
    public conn(){  
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            c =DriverManager.getConnection("jdbc:mysql://localhost:3306/start","root","");    
            s =c.createStatement();  
      
           
        }catch(Exception e){ 
          e.printStackTrace();
        }  
    }  
}  