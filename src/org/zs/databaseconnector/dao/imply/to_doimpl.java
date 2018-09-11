package org.zs.databaseconnector.dao.imply;

import org.zs.databaseconnector.dao.dbconnector;
import org.zs.databaseconnector.dao.to_doDao;
import org.zs.databaseconnector.vo.to_do_list;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class to_doimpl implements to_doDao {
    @Override
    public List<to_do_list> findbydo(String t_id) {
         to_do_list to_do;
         to_do = null;
        String sql = "SELECT todo_name,todo FROM tb_gov_todolist"+"WHERE gov_teacher_id = ?";
        dbconnector test=new dbconnector();
        Connection conn = test.getConnnection();
        PreparedStatement ps = null;
        ArrayList<to_do_list> list = new ArrayList<to_do_list>();
        try
        {
            ps = conn.prepareStatement(sql);
            ps.setString(1,t_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                to_do=new to_do_list();
                to_do.setT_name(rs.getString("todo_name"));
                to_do.setT_text(rs.getString("todo"));
                list.add(to_do);
            }

        }
         catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }



}
