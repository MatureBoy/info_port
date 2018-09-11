package org.xh.AdminTest;

import org.xh.AdminTest.ConnectDatabase.ConnectDatabase;

import java.sql.Connection;


public class test {
    public static void main(String[] args) {
        Connection conn = new ConnectDatabase("information_port").getConnection();
        System.out.println(conn);
    }
}