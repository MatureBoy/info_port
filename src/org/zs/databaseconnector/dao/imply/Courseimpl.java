package org.zs.databaseconnector.dao.imply;

import org.zs.databaseconnector.dao.CourseDao;
import org.zs.databaseconnector.dao.dbconnector;
import org.zs.databaseconnector.vo.Course;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Courseimpl implements CourseDao {

    @Override
    public List<Course> findbyTid(String Teacher_id) {
        Course course=null;
        String  sql = "SELECT c.course_id,c.teacher_id,k.course_id," +
                "k.course_name,k.year,k.semester,k.week,k.section FROM " +
                "tb_course AS k,tb_cct AS c " +
                "WHERE  c.course_id=k.course_id " +
                "AND c.teacher_id=?";
        dbconnector test=new dbconnector();
        Connection conn = test.getConnnection();
        PreparedStatement ps = null;
        ArrayList<Course> list = new ArrayList<Course>();
        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1,Teacher_id);
            ResultSet rs = ps.executeQuery();

            while(rs.next())
            {
                course=new Course();
                course.setCourse_jie(rs.getInt("section"));
                course.setCourse_week(rs.getInt("week"));
                course.setCourse_year(rs.getString("year"));
                course.setCourse_term(rs.getInt("semester"));
                course.setCourse_name(rs.getString("course_name"));
                list.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
