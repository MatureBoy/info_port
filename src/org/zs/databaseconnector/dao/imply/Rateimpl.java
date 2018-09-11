package org.zs.databaseconnector.dao.imply;

import org.zs.databaseconnector.dao.RateDao;
import org.zs.databaseconnector.dao.dbconnector;
import org.zs.databaseconnector.vo.Rate;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Rateimpl implements RateDao {
    @Override
    public List<Rate> findByxueli() {
        Rate rate=null;
        String sql = "SELECT * FROM tb_gov_getwork_rate";
        dbconnector test=new dbconnector();
        Connection conn = test.getConnnection();
        PreparedStatement ps = null;
        ArrayList<Rate> list = new ArrayList<Rate>();
        try
        {
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                rate=new Rate();
                rate.setR_gowhere(rs.getString("work_from"));
                rate.setR_rate(rs.getString("work_rate"));
                rate.setR_xueli(rs.getString("education"));
                list.add(rate);
                }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


}
