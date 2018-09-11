package org.zt.webpractice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static String URL = "jdbc:mysql://127.0.0.1:3306/information_port?serverTimezone=UTC&useSSL=true&useUnicode=true&characterEncoding=utf8";
    private static String USER = "root";
    private static String PASSWORD = "123456";
    private Connection connection;

    public DatabaseConnection(){
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection = DriverManager.getConnection(URL,USER,PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }
}
