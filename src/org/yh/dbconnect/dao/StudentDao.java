package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Student;

import java.util.List;

public interface StudentDao {
    List<Student> Myfind(String class_id);
}
