/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

/**
 *
 * @author USER
 */import java.sql.*;

public class ConnectDB {
    public static Connection getConnection() {
        
        try {
            String dbuser="fahim";
            String dbuser_pass="123456";
//            String dbuser="sa";
//            String dbuser_pass="afnan719";
            String dbname="EMPLOYEEORDER";
            Connection connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName="+dbname+";selectMethod=cursor", dbuser,dbuser_pass);
            System.out.println("Database Connection Successful.");
            return connection;
        } catch (Exception e) {
         System.out.println(e);
            return null;
//            e.printStackTrace();
        }
    }

}
