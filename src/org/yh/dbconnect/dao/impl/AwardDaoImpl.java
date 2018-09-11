package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.AwardDao;
import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.vo.Award;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AwardDaoImpl implements AwardDao {
    @Override
    public List<Award> FindAward(String class_id) {
        Connection conn = new Databaseconnect().getConnnection();
        Award award;
        List<Award> list_award=new ArrayList<>();
        String sql="SELECT DISTINCT tb_student.stu_id,tb_student.stu_name,tb_stu_punish.pname,tb_stu_punish.type "+
                "FROM tb_student,tb_stu_punish,tb_cscg "+
                "WHERE tb_stu_punish.stu_id =tb_student.stu_id "+
                "AND  tb_cscg.stu_id =tb_stu_punish.stu_id "+
                "AND  tb_cscg.class_id =?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,class_id);
            re=ps.executeQuery();
            while(re.next()){
                award=new Award();
                award.setStu_id(re.getString("stu_id"));
                award.setStu_name(re.getString("stu_name"));
                award.setPname(re.getString("pname"));
                award.setType(re.getString("type"));
                list_award.add(award);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try{
                if(ps!=null) ps.close();
                if(re!=null) re.close();
                if(conn!=null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_award;
    }
}
