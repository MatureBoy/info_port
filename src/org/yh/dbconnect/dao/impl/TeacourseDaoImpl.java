package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.TeacourseDao;
import org.yh.dbconnect.vo.Teacourse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacourseDaoImpl implements TeacourseDao {
    @Override
    public List<Teacourse> FindCourseBytea(String teacher_id) {
        Connection conn = new Databaseconnect().getConnnection();
        List<Teacourse> list_teacourse=new ArrayList<>();
        String sql="SELECT tb_course.course_name,tb_course.year,tb_course.semester,tb_course.week,tb_course.section,tb_course.course_place " +
                "FROM tb_course,tb_cct "+
                "WHERE tb_cct.course_id =tb_course.course_id  " +
                "AND tb_cct.teacher_id =?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,teacher_id);
            re=ps.executeQuery();
            while(re.next()){
                Teacourse teacourse=new Teacourse();
                teacourse.setCourse_name(re.getString("course_name"));
                teacourse.setYear(re.getString("year"));
                teacourse.setSemester(re.getInt("semester"));
                teacourse.setWeek(re.getInt("week"));
                teacourse.setSection(re.getInt("section"));
                teacourse.setCourse_place(re.getString("course_place"));
                list_teacourse.add(teacourse);
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
        return list_teacourse;
    }
}
