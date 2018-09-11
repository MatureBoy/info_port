package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Exam;

import java.util.List;

public interface ExamDao {
    List<Exam> FindExam(String class_id);
}
