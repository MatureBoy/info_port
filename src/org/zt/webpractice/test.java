package org.zt.webpractice;

import javafx.scene.input.DataFormat;
import org.zt.webpractice.dao.TeacherFunction;
import org.zt.webpractice.dao.impl.TeacherFunctionImpl;
import org.zt.webpractice.factory.Factory;
import org.zt.webpractice.vo.*;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class test {
    public static void main(String args[]) throws SQLException {
//        String account = "s1001";
//        String year = "2016-2017";
//        String semester = "1";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        List<Course> courseList = teacherFunction.getCourseListByAccount(account, year, semester);
//        String courseId = teacherFunction.getCourseId(courseList.get(0).getName());
//        List<StudentMark> markList = teacherFunction.getStudentMarks(courseId);
//        for (StudentMark student:markList) {
//            System.out.println(student.getStudent().getName()+"  "+student.getStudent().getStudentId()+"  "+student.getScore());
//        }
        //Factory factory = new Factory();
        //InsertAccount(factory);
        //InsertTeacher(factory);
        //InsertStu(factory);
        //InsertCourse(factory);
        //gov
        //counsellor
        //InsertCourse(factory);
        //InsertCscgAndGrade(factory);
        //InsertCheckWork(factory);
//        String account = "t0";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        List<CheckOnWork> checkOnWorkList = teacherFunction.getCheckOnWork(account);
//        System.out.println(checkOnWorkList.size());
//        String account = "t0";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        System.out.println(teacherFunction.getSpyInfo(account).size());
//        String account = "t0";
//        String year = "2016-2017";
//        String section = "1";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        List<Course> courseList = teacherFunction.getCourseListByAccount(account, year, section);
//        List<StudentMark> markList = null;
//        if (courseList.size() > 0) {
//            markList = teacherFunction.getStudentMarks(teacherFunction.getCourseId(courseList.get(0).getName()));
//        }
//        System.out.println(courseList.size());
//        String account = "t0";
//        String year = "16-17";
//        String semester = "1";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        teacherFunction.getClassNameAndCourseId(account,year,semester);
//        List<String> list = teacherFunction.getNameList();
//        System.out.println(teacherFunction.getMap().get(list.get(0)));
//        List<StudentMark> markList = teacherFunction.getStudentMarks(teacherFunction.getCourseId(teacherFunction.getMap().get(list.get(0))));
//        System.out.println(markList.size());
//        String account = "t0";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        List<SpyInfo> spyInfoList = teacherFunction.getSpyInfo(account);
//        System.out.println(spyInfoList.get(0).getDataTime());
//        TeacherFunction teacherFunction  = new TeacherFunctionImpl();
//        String account = (String)request.getAttribute("username");
//        String year = "2016-2017";
//        String semester = "1";
//        teacherFunction.getClassNameAndCourseId(account, year, semester);
//        List<String> list = teacherFunction.getNameList();
//        System.out.println(teacherFunction.getCourseNameById("co0"));
        return;
    }

    private static void InsertCheckWork(Factory factory) throws SQLException {
        for (int i = 0; i < 100; i++) {
            int num = new Random().nextInt(90);
            int courseId = new Random().nextInt(4);
            String courseName = null;
            switch (courseId) {
                case 0: {
                    courseName = "数学";
                    break;
                }
                case 1: {
                    courseName = "化学";
                    break;
                }
                case 2: {
                    courseName = "英语";
                    break;
                }
                case 3: {
                    courseName = "物理";
                    break;
                }
                default:
                    break;
            }
            String sql = "INSERT INTO tb_te_checkwork VALUES('s" + num + "','"+courseName+"','" + getDate() + "','sname" + num + "','t"+courseId+"')";
            PreparedStatement ps = factory.getPreparedStatement(sql);
            ps.executeUpdate();
        }
    }

    private static void InsertCscgAndGrade(Factory factory) throws SQLException {
        for (int i = 60; i < 90; i++) {
            String sql = "INSERT INTO tb_cscg VALUES('s" + i + "','cl2','co3','gr" + (i + 270) + "','基础课程')";
            PreparedStatement ps = factory.getPreparedStatement(sql);
            ps.executeUpdate();
        }
        for (int i = 330; i < 360; i++) {
            String sql = "INSERT INTO tb_grade VALUES('gr" + i + "','" + getGrade() + "','2','" + (i - 330) + "')";
            PreparedStatement ps = factory.getPreparedStatement(sql);
            ps.executeUpdate();
        }
    }


    private static float getGrade() {
        Random random = new Random();
        while (true) {
            Float f = (float) random.nextInt(100);
            if (f > 40) return f;
        }
    }

    private static void InsertStu(Factory factory) throws SQLException {
        for (int i = 60; i < 90; i++) {
            String sql = "INSERT INTO tb_student VALUES('s" + i + "','sname" + i + "','" + getSex() + "','" + getAge() + "','四川','计算机科学与工程','177" + getRandom(9999999, 1000000) + "','" + getRandom(999999999, 1315464) + "@qq.com','" + getDate() + "','class3')";
            PreparedStatement ps = factory.getPreparedStatement(sql);
            ps.executeUpdate();
            System.out.println(sql);
        }
    }


    public static Timestamp getDateTime() {
        Date date = new Date();
        date.setYear(2016);
        date.setMonth(9);
        date.setDate(1);
        date.setHours(0);
        date.setMinutes(0);
        date.setSeconds(0);
        Timestamp timestamp = new Timestamp(date.getTime());
        return timestamp;
    }

    public static java.sql.Date getDate() {
        return new java.sql.Date(118, 8, new Random().nextInt(30));
    }

    public static int getAge() {
        return getRandom(21, 17);
    }

    public static String getSex() {
        if (getRandom(3, 0) == 1) {
            return "男";
        } else {
            return "女";
        }

    }

    private static void InsertTeacher(Factory factory) throws SQLException {
        String sql = "INSERT INTO tb_teacher VALUES('t3','李宗昊','女','30','3000','教授','17713216511','654457214@sina.com')";
        PreparedStatement ps = factory.getPreparedStatement(sql);
        ps.executeUpdate();
//        sql = "INSERT INTO tb_teacher VALUES('t1','韦兴富','女','19','4000','副主席','17784651321','1849156165@sina.com')";
//        ps = factory.getPreparedStatement(sql);
//        ps.executeUpdate();
//        sql = "INSERT INTO tb_teacher VALUES('t2','杨环','女','20','5000','总理','17745641315','46543546@sina.com')";
//        ps = factory.getPreparedStatement(sql);
        ps.executeUpdate();
    }

    private static int getRandom(int max, int min) {
        Random random = new Random();
        while (true) {
            int num = random.nextInt(max);
            if (num > min) {
                return num;
            }
        }
    }

    private static void InsertAccount(Factory factory) throws SQLException {
        for (int i = 0; i < 1; i++) {
            String sql = "INSERT INTO tb_account VALUES('g" + i + "','g" + i + "','4')";
            PreparedStatement ps = factory.getPreparedStatement(sql);
            ps.executeUpdate();
        }
    }

    private static void InsertCourse(Factory factory) throws SQLException {
        for (int i = 0; i < 1; i++) {
            String sql = "INSERT INTO tb_course VALUES('co" + 3 + "','英语','16-17','1','4','2',null,null,'A304')";
            PreparedStatement ps = factory.getPreparedStatement(sql);
            ps.executeUpdate(sql);
        }
    }
}
