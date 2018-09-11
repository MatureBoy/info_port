package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Studentscore;

import java.util.List;

public interface StudentscoreDao {
    List<Studentscore> findStudentScore(String stu_id);
}
