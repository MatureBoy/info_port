package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.StucourseDao;
import org.yh.dbconnect.vo.Stucourse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StucourseDaoImpl implements StucourseDao {
    @Override
    public List<Stucourse> FindCourseBystu(String stu_id) {
        Connection conn = new Databaseconnect().getConnnection();
        List<Stucourse> list_stucourse=new ArrayList<>();
        String sql="SELECT tb_course.course_name,tb_course.year,tb_course.semester,tb_course.week,tb_course.section,tb_course.course_place "+
                "FROM tb_course,tb_cscg "+
                "WHERE  tb_cscg.course_id = tb_course.course_id  "+
                "AND  tb_cscg.stu_id =?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            re=ps.executeQuery();
            while(re.next()){
                Stucourse stucourse=new Stucourse();
                stucourse.setCourse_name(re.getString("course_name"));
                stucourse.setYear(re.getString("year"));
                stucourse.setSemester(re.getInt("semester"));
                stucourse.setWeek(re.getInt("week"));
                stucourse.setSection(re.getInt("section"));
                stucourse.setCourse_place(re.getString("course_place"));
                list_stucourse.add(stucourse);
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
        return list_stucourse;
    }
}
