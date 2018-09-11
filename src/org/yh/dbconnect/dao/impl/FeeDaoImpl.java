package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.FeeDao;
import org.yh.dbconnect.vo.Fee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FeeDaoImpl implements FeeDao {
    @Override
    public List<Fee> FindFee(String class_id) {
        Connection conn = new Databaseconnect().getConnnection();
        List<Fee> list_fee=new ArrayList<>();
        String sql="SELECT DISTINCT tb_student.stu_id,tb_student.stu_name,network_fee,water_fee,electric_fee "+
        "FROM tb_CSCG,tb_student join tb_stu_expenses on tb_student.stu_id = tb_stu_expenses.stu_id "+
        "WHERE tb_CSCG.stu_id = tb_student.stu_id "+
        "AND tb_CSCG.class_id = ?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,class_id);
            re=ps.executeQuery();
            if(re.next()){
                Fee fee=new Fee();
                fee.setStu_id(re.getString("stu_id"));
                fee.setStu_name(re.getString("stu_name"));
                fee.setNetwork_fee(re.getFloat("network_fee"));
                fee.setWater_fee(re.getFloat("water_fee"));
                fee.setElectric_fee(re.getFloat("electric_fee"));
                list_fee.add(fee);
            }
            //return list_fee;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try{
                if(ps!=null)
                    ps.close();
                if(conn!=null)
                    conn.close();
                if(re!=null)
                    re.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_fee;
    }
}
