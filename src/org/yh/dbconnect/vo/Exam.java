package org.yh.dbconnect.vo;

public class Exam {
    private  String stu_id;
    private  String stu_name;
    private  String course_name;
    private  String exam_time;
    private  String exam_place;

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getExam_time() {
        return exam_time;
    }

    public void setExam_time(String exam_time) {
        this.exam_time = exam_time;
    }

    public String getExam_place() {
        return exam_place;
    }

    public void setExam_place(String exam_place) {
        this.exam_place = exam_place;
    }
}
