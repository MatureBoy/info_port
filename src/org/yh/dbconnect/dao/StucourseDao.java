package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Stucourse;

import java.util.List;

public interface StucourseDao {
    List<Stucourse> FindCourseBystu(String stu_id);
}
