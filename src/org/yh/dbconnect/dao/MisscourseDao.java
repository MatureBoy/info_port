package org.yh.dbconnect.dao;

import org.yh.dbconnect.vo.Misscourse;

import java.util.List;

public interface MisscourseDao {
    List<Misscourse> myFind();//查看缺勤信息
    boolean insertion(String teacher_id, String stu_id, String stu_name, String course_name, String check_time);
    //插入缺勤信息
    boolean delete(String stu_id, String course_name, String check_time);//删除缺勤信息
}
