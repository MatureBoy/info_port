package org.zs.databaseconnector.dao.imply;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.zs.databaseconnector.dao.Gover_teacherDao;
import org.zs.databaseconnector.dao.dbconnector;
import org.zs.databaseconnector.vo.Gover_teacher;
import org.zs.databaseconnector.vo.Card;
public class Gover_teacherimpl implements Gover_teacherDao{
     @Override

    public List<Gover_teacher> findByID(String g_id) {
        Gover_teacher gover_teacher=null;
        String sql = "SELECT s.gov_teacher_id,s.gov_tname,s.gov_work,s.salary,s.phone,c.card_id,c.curr_money " +
                "FROM tb_gov_teacher AS s,tb_card AS c " +
                "WHERE s.gov_teacher_id = c.card_id " +
                "AND s.gov_teacher_id = ?";
        dbconnector test=new dbconnector();
        Connection conn = test.getConnnection();
        PreparedStatement ps = null;
         List<Gover_teacher> list = new ArrayList<Gover_teacher>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,g_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                gover_teacher = new Gover_teacher();
                gover_teacher.setG_id(rs.getString("gov_teacher_id"));
                gover_teacher.setG_name(rs.getString("gov_tname"));
                gover_teacher.setG_job(rs.getString("gov_work"));
                gover_teacher.setG_salary(rs.getInt("salary"));
                gover_teacher.setG_telenum(rs.getString("phone"));
                gover_teacher.setG_rest(rs.getInt("curr_money"));
                Card card=new Card();
                card.setC_id(rs.getString("card_id"));
                gover_teacher.setCard(card);
                list.add(gover_teacher);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;

    }

}
