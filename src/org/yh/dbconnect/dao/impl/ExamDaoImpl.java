package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.ExamDao;
import org.yh.dbconnect.vo.Exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ExamDaoImpl implements ExamDao {
    @Override
    public List<Exam> FindExam(String class_id) {
        Connection conn = new Databaseconnect().getConnnection();
        List<Exam> list_exam=new ArrayList<>();
        String sql="SELECT DISTINCT tb_student.stu_id,tb_student.stu_name,tb_course.course_name,tb_course.exam_time,tb_course.exam_place "+
                "FROM tb_student,tb_course,tb_cscg "+
                "WHERE tb_cscg.stu_id=tb_student.stu_id "+
                "AND  tb_cscg.course_id= tb_course.course_id  "+
                "AND  tb_cscg.class_id =?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,class_id);
            re=ps.executeQuery();
            while(re.next()){
                Exam exam=new Exam();
                exam.setStu_id(re.getString("stu_id"));
                exam.setStu_name(re.getString("stu_name"));
                exam.setCourse_name(re.getString("course_name"));
                exam.setExam_place(re.getString("exam_place"));
                exam.setExam_time(re.getString("exam_time"));
                list_exam.add(exam);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list_exam;
    }
}
