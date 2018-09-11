package org.xh.AdminTest.ConnectDatabase;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDatabase {
    private static String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static String URL = "jdbc:mysql://localhost/";
    private static String USER = "root";
    private static String PASSWORD = "514519ff519514";
    public Connection conn;
    public ConnectDatabase(String Database){
        try{
            Class.forName(DRIVER);
            String url=URL+Database+"?useSSL=FALSE&serverTimezone=UTC";
            conn=DriverManager.getConnection(url,USER,PASSWORD);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public Connection getConnection(){
        return conn;
    }
}
