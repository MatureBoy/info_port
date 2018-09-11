package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.StudentscoreDao;
import org.yh.dbconnect.vo.Studentscore;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentscoreDaoImpl implements StudentscoreDao {
    @Override
    public List<Studentscore> findStudentScore(String stu_id) {
        Connection conn = new Databaseconnect().getConnnection();
        List<Studentscore> list_stuscore=new ArrayList<>();
        String sql="SELECT tb_course.course_name,tb_course.year,tb_course.semester,tb_grade.grade_score,tb_grade.grade_credit "+
                "FROM tb_course,tb_grade,tb_CSCG "+
                "WHERE tb_course.course_id= tb_CSCG.course_id "+
                "AND tb_grade.grade_id=tb_CSCG.grade_id "+
                "AND tb_cscg.stu_id =?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            re=ps.executeQuery();
            while(re.next()){
                Studentscore studentscore = new Studentscore();
                studentscore.setCourse_name(re.getString("course_name"));
                studentscore.setYear(re.getString("year"));
                studentscore.setSemester(re.getInt("semester"));
                studentscore.setGrade_score(re.getFloat("grade_score"));
                studentscore.setGrade_credit(re.getFloat("grade_credit"));
                list_stuscore.add(studentscore);
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
        return list_stuscore;
    }
}
