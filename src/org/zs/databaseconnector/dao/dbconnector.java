package org.zs.databaseconnector.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnector {
    public static String DRIVER = "com.mysql.cj.jdbc.Driver";
    public static String URL = "jdbc:mysql://127.0.0.1:3306/information_port?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false ";
    public static String USER = "root";
    public static String PASSWORD = "123456";
    public Connection conn;


    public dbconnector(){
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL,USER,PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public Connection getConnnection(){
        return conn;
    }

}


