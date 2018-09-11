package org.zt.webpractice.dao.impl;

import org.zt.webpractice.dao.TeacherFunction;
import org.zt.webpractice.factory.Factory;
import org.zt.webpractice.vo.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class TeacherFunctionImpl implements TeacherFunction {
    private Factory factory;
    private String sql;
    private PreparedStatement ps;
    private ResultSet rs;
    private Map<String, String> map;
    private List<String> nameList;

    public TeacherFunctionImpl() {
        factory = new Factory();
    }

    @Override
    public String getCourseId(String courseName) {
        return map.get(courseName);
    }

    public Map<String, String> getMap() {
        return map;
    }

    public List<String> getNameList() {
        return nameList;
    }

    @Override
    public void getClassNameAndCourseId(String account, String year, String semester) throws SQLException {
        map = new HashMap<>();
        nameList = new ArrayList<>();
        sql = "SELECT tb_course.course_name,tb_class.class_name,tb_CCT.course_id " + "FROM tb_course,tb_CCT,tb_class " + "WHERE tb_course.course_id=tb_cct.course_id " + "AND tb_cct.teacher_id=? " + "AND tb_course.year=? " + "AND tb_course.semester=? AND tb_cct.class_id=tb_class.class_id";
        setPreparedStatement(sql);
        ps.setString(1, account);
        ps.setString(2, year);
        ps.setString(3, semester);
        rs = ps.executeQuery();
        while (rs.next()) {
            String className = rs.getString("tb_class.class_name");
            String courseId = rs.getString("course_id");
            map.put(className, courseId);
            nameList.add(className);
        }
    }

    public void setPreparedStatement(String sql) throws SQLException {
        ps = factory.getPreparedStatement(sql);
    }

    @Override
    public List<Course> getCourseListByAccount(String account, String year, String semester) throws SQLException {
        List<Course> courseList = new ArrayList<>();
        sql = "SELECT tb_course.course_id,course_name,section,week,course_place " + "FROM tb_course,tb_CCT " + "WHERE tb_course.course_id=tb_CCT.course_id " + "AND tb_cct.teacher_id=? " + "AND tb_course.year=? " + "AND tb_course.semester=?";
        setPreparedStatement(sql);
        ps.setString(1, account);
        ps.setString(2, year);
        ps.setString(3, semester);
        rs = ps.executeQuery();
        while (rs.next()) {
            Course course = new Course();
            course.setCourseId(rs.getString("tb_course.course_id"));
            course.setName(rs.getString("tb_course.course_name"));
            course.setSection(rs.getInt("section"));
            course.setWeek(rs.getInt("week"));
            course.setPlace(rs.getString("course_place"));
            courseList.add(course);
        }
        return courseList;
    }

    @Override
    public Teacher getInfoByAccount(String account) throws SQLException {
        Teacher teacher = new Teacher();
        sql = "SELECT tname,sex,age,salary,te_title,email,phone FROM tb_teacher WHERE teacher_id=?";
        setPreparedStatement(sql);
        ps.setString(1, account);
        rs = ps.executeQuery();
        if (rs.next()) {
            teacher.setAccount(account);
            teacher.setAge(rs.getInt("age"));
            teacher.setMail(rs.getString("email"));
            teacher.setName(rs.getString("tname"));
            teacher.setPhone(rs.getString("phone"));
            teacher.setSex(rs.getString("sex"));
            teacher.setTitle(rs.getString("te_title"));
            teacher.setSalary(rs.getInt("salary"));
        }
        sql = "SELECT curr_money FROM tb_card WHERE card_id=?";
        setPreparedStatement(sql);
        ps.setString(1, account);
        rs = ps.executeQuery();
        if (rs.next()) {
            teacher.setCardRemain(rs.getFloat("curr_money"));
        }
        return teacher;
    }

    @Override
    public List<SpyInfo> getSpyInfo(String account) throws SQLException {
        List<SpyInfo> spyInfos = new ArrayList<>();
        sql = "SELECT inv_course,inv_time,inv_place FROM tb_te_invigilate WHERE teacher_id=?";
        setPreparedStatement(sql);
        ps.setString(1, account);
        rs = ps.executeQuery();
        while (rs.next()) {
            SpyInfo spyInfo = new SpyInfo();
            spyInfo.setExamName(rs.getString("inv_course"));
            spyInfo.setDataTime(rs.getString("inv_time"));
            spyInfo.setPlace(rs.getString("inv_place"));
            spyInfos.add(spyInfo);
        }
        return spyInfos;
    }

    @Override
    public List<CheckOnWork> getCheckOnWork(String account) throws SQLException {
        List<CheckOnWork> checkOnWorkList = new ArrayList<>();
        sql = "SELECT stu_name,stu_id,check_time,course_name FROM tb_te_checkwork WHERE teacher_id=?";
        setPreparedStatement(sql);
        ps.setString(1, account);
        rs = ps.executeQuery();
        while (rs.next()) {
            CheckOnWork checkOnWork = new CheckOnWork();
            checkOnWork.setCourseName(rs.getString("course_name"));
            checkOnWork.setDateTime(rs.getDate("check_time"));
            checkOnWork.setStuId(rs.getString("stu_id"));
            checkOnWork.setStuName(rs.getString("stu_name"));
            checkOnWorkList.add(checkOnWork);
        }
        return checkOnWorkList;
    }

    @Override
    public List<StudentMark> getStudentMarks(String courseId) throws SQLException {
        List<StudentMark> markList = new ArrayList<>();
        sql = "SELECT tb_student.stu_name,tb_CSCG.stu_id,tb_grade.grade_score,tb_grade.grade_credit " + "FROM tb_CSCG,tb_grade,tb_student " + "WHERE tb_CSCG.course_id=? " + "AND tb_CSCG.grade_id=tb_grade.grade_id " + "AND tb_student.stu_id=tb_CSCG.stu_id";
        setPreparedStatement(sql);
        ps.setString(1, courseId);
        rs = ps.executeQuery();
        while (rs.next()) {
            StudentMark studentMark = new StudentMark();
            Student student = new Student();
            student.setStudentId(rs.getString("stu_id"));
            student.setName(rs.getString("stu_name"));
            studentMark.setScore(rs.getFloat("grade_score"));
            studentMark.setStudent(student);
            markList.add(studentMark);
        }
        return markList;
    }

    public Factory getFactory() {
        return factory;
    }

    @Override
    public String getCourseNameById(String courseId) throws SQLException {
        sql = "SELECT course_name FROM tb_course WHERE course_id=?";
        setPreparedStatement(sql);
        ps.setString(1, courseId);
        rs = ps.executeQuery();
        while (rs.next()) {
            return rs.getString("course_name");
        }
        return null;
    }

    @Override
    public void postCheckWork(String stu_id, String course_name, String stu_name, String teacher_id) throws SQLException {
        String sql = "INSERT INTO tb_te_checkwork VALUES('" + stu_id + "','" + course_name + "','" + getDate() + "','" + stu_name + "','" + teacher_id + "')";
        setPreparedStatement(sql);
        ps.executeUpdate();
    }

    java.sql.Date getDate() {
        Date date = new Date();
        return new java.sql.Date(date.getTime());
    }
}

