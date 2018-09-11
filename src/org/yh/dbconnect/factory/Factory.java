package org.yh.dbconnect.factory;

import org.yh.dbconnect.dao.*;
import org.yh.dbconnect.dao.impl.*;
import org.yh.dbconnect.vo.Failexam;
import org.yh.dbconnect.vo.Student;
import org.yh.dbconnect.vo.Studentscore;

import java.sql.Connection;
import java.util.List;

public class Factory {
    public static CounsellerDao getCounsellerDao() {
        return new CounsellerDaoImpl();//查看个人信息
    }

    public static MisscourseDao getMisscourseDao() {
        return new MisscourseDaoImpl();
    }

    public static ResearchDao getResearchDao() {
        return new ResearchDaoImpl();
    }

    public static StudentDao getStudentDao() {
        return new StudentDaoImpl();
    }

    public static FailexamDao getFailexamDao() {
        return new FailexamDaoImpl();
        }
    public static StudentscoreDao getStudentscoreDao(){
        return  new StudentscoreDaoImpl();
    }

    public  static FeeDaoImpl getFeeDao(){
        return new FeeDaoImpl();
    }

    public static ExamDaoImpl getExamDaoImpl(){
        return new ExamDaoImpl();
    }
    public static AwardDaoImpl getAwardDaoImpl(){
        return new AwardDaoImpl();
    }
    public  static StucourseDaoImpl getStucourseDaoImpl(){
        return new StucourseDaoImpl();
    }
    public static TeacourseDaoImpl getTeacourseDaoImpl(){
        return new TeacourseDaoImpl();
    }
    }

