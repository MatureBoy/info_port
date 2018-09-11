package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.CounsellerDao;
import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.vo.Counseller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
//查询辅导员个人信息
public class CounsellerDaoImpl implements CounsellerDao {
    @Override
    public List<Counseller> findall() {
        Connection conn = new Databaseconnect().getConnnection();
        List<Counseller> list_coun = new ArrayList<>();
        String sql = "SELECT * FROM tb_counsellor ";
        Statement st_one = null;
        ResultSet rs_one = null;
        try {
            st_one = conn.createStatement();
            rs_one = st_one.executeQuery(sql);
            while (rs_one.next()) {
                Counseller coun = new Counseller();
                coun.setCoun_id(rs_one.getString("coun_id"));
                coun.setCoun_name(rs_one.getString("coun_name"));
                coun.setAge(rs_one.getInt("age"));
                coun.setSex(rs_one.getString("sex"));
                coun.setEmail(rs_one.getString("email"));
                coun.setPhone(rs_one.getString("phone"));
                coun.setSalary(rs_one.getInt("salary"));
                list_coun.add(coun);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (st_one != null) st_one.close();
                if (rs_one != null) rs_one.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_coun;
    }
}
