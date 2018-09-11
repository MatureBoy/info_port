package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.ResearchDao;
import org.yh.dbconnect.vo.Research;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
//查询科研项目
public class ResearchDaoImpl implements ResearchDao {
    @Override
    public List<Research> FindAll() {
        Connection conn = new Databaseconnect().getConnnection();
        Research res;
        List<Research> list_res = new ArrayList<>();
        String sql = "SELECT * FROM tb_research ";
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                res = new Research();
                res.setRes_id(rs.getInt("res_id"));
                res.setRes_name(rs.getString("res_name"));
                res.setRes_fee(rs.getInt("res_fee"));
                res.setRes_person(rs.getString("res_person"));
                list_res.add(res);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (st != null) st.close();
                if (rs != null) rs.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_res;
    }
}
