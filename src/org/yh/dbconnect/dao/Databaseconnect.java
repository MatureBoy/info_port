package org.yh.dbconnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Databaseconnect {
    private static String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static String URL = "jdbc:mysql://localhost:3306/information_port?useSSL=false&serverTimezone=UTC";
    private static  String USER = "root";
    private static String PASSWORD = "123456";
    private Connection conn;
    public Databaseconnect(){
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

