package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.FailexamDao;
import org.yh.dbconnect.vo.Failexam;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FailexamDaoImpl implements FailexamDao{
    @Override
    public List<Failexam> find() {
        Connection conn = new Databaseconnect().getConnnection();
        List<Failexam> list_fail = new ArrayList<>();
        String sql = "select DISTINCT tb_student.stu_id,tb_student.stu_name,tb_class.class_name,tb_course.course_name,tb_course.year,tb_course.semester,tb_grade.grade_score,tb_grade.grade_credit "+
                "from tb_student,tb_class,tb_course,tb_grade,tb_cscg "+
                "WHERE tb_student.stu_id =tb_cscg.stu_id  " +
                "and  tb_class.class_id = tb_cscg.class_id " +
                "and tb_course.course_id = tb_cscg.course_id " +
                "and  tb_grade.grade_id =tb_cscg.grade_id  "+
                "and tb_grade.grade_score < 60 ";
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Failexam failexam = new Failexam();
                failexam.setStu_id(rs.getString("stu_id"));
                failexam.setStu_name(rs.getString("stu_name"));
                failexam.setClass_name(rs.getString("class_name"));
                failexam.setCourse_name(rs.getString("course_name"));
                failexam.setYear(rs.getString("year"));
                failexam.setSemester(rs.getInt("semester"));
                failexam.setGarde_score(rs.getFloat("grade_score"));
                failexam.setGrade_credit(rs.getInt("grade_credit"));
                list_fail.add(failexam);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (st != null) st.close();
                if (rs != null) rs.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_fail;
    }


}
