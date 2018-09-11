package org.zt.webpractice.dao;

import org.zt.webpractice.vo.*;

import java.sql.SQLException;
import java.util.List;

public interface TeacherFunction {
    List<Course> getCourseListByAccount(String account, String year, String semester) throws SQLException;

    Teacher getInfoByAccount(String account) throws SQLException;

    List<SpyInfo> getSpyInfo(String account) throws SQLException;

    List<CheckOnWork> getCheckOnWork(String account) throws SQLException;

    List<StudentMark> getStudentMarks(String courseId) throws SQLException;

    String getCourseId(String courseName);

    void getClassNameAndCourseId(String account, String year, String semester) throws SQLException;

    String getCourseNameById(String courseId) throws SQLException;

    void postCheckWork(String stu_id,String course_name,String stu_name,String teacher_id) throws SQLException;
}
