package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Teacourse;

import java.util.List;

public interface TeacourseDao {
    List<Teacourse> FindCourseBytea(String teacher_id);
}
