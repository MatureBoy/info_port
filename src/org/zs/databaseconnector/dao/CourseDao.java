package org.zs.databaseconnector.dao;

import org.zs.databaseconnector.vo.Course;

import java.util.List;

public interface CourseDao {
    public List<Course> findbyTid(String Teacher_id);
}
