package org.zs.databaseconnector.vo;

import org.zs.databaseconnector.dao.imply.Courseimpl;
import org.zs.databaseconnector.dao.imply.Gover_teacherimpl;

import java.util.List;

public class ttte
 {
    public static void main(String[] args) {

//        boolean flag=false;
//        systemMangerImpl sy=new systemMangerImpl();
//        System.out.println(sy.deleteAccount("c0"));
//        String account = "t0";
//        String year = "2016-2017";
//        String semester = "1";
//        TeacherFunctionImpl teacherFunction = new TeacherFunctionImpl();
//        teacherFunction.getClassNameAndCourseId(account, year, semester);
//        List<String> list = teacherFunction.getNameList();
//        System.out.println(list.size());
        Gover_teacherimpl t=new Gover_teacherimpl();
        List<Gover_teacher> t1 = t.findByID("g1");
        System.out.println(t1.size());

    }
 }

