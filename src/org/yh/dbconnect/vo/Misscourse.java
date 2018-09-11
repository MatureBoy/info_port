package org.yh.dbconnect.vo;

public class Misscourse {
    private String teacher_id;
    private String stu_id;
    private String stu_name;
    private String course_name;
    private String check_time;

    public String getCheck_time() {
        return check_time;
    }

    public void setCheck_time(String check_time) {
        this.check_time = check_time;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String varchar) {
        this.stu_id = varchar;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }



}
