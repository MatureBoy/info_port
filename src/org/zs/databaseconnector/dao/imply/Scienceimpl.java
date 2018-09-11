package org.zs.databaseconnector.dao.imply;

import org.zs.databaseconnector.dao.ScienceDao;
import org.zs.databaseconnector.dao.dbconnector;
import org.zs.databaseconnector.vo.Science;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Scienceimpl implements ScienceDao {
    @Override
    public List<Science> findbySid() {
           Science science1 = new  Science();
           String sql = "SELECT * FROM tb_research ";
        dbconnector test=new dbconnector();
        Connection conn = test.getConnnection();
        PreparedStatement ps = null;
        ArrayList<Science> list = new ArrayList<Science>();
        try
        {
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                science1= new Science();
                science1.setSc_id(rs.getInt("res_id"));
                science1.setSc_name(rs.getString("res_name"));
                science1.setSc_leader(rs.getString("res_person"));
                science1.setSc_money(rs.getInt("res_fee"));
                list.add(science1);
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


}
