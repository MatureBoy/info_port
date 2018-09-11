package org.zs.databaseconnector.dao.imply;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.zs.databaseconnector.dao.dbconnector;
import org.zs.databaseconnector.dao.shengyuan;
import org.zs.databaseconnector.vo.Place;

public class from_where_impl implements shengyuan {
    @Override
    public List<Place> findbypname() {
        Place place=null;
        String sql ="SELECT * FROM tb_gov_stufromplace";
        Connection conn = new dbconnector().getConnnection();
        PreparedStatement ps = null;
        ArrayList<Place> list=new ArrayList<Place>();
        try{
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                place=new Place();
                place.setP_name(rs.getString("from_place"));
                place.setP_num(rs.getInt("stu_quantity"));
                list.add(place);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

}
