package org.yh.dbconnect.vo;

public class Failexam {
    private String stu_id;
    private String stu_name;
    private String class_name;
    private String course_name;
    private String year;
    private int semester;
    private float garde_score;
    private float grade_credit;

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

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public float getGarde_score() {
        return garde_score;
    }

    public void setGarde_score(float garde_score) {
        this.garde_score = garde_score;
    }

    public float getGrade_credit() {
        return grade_credit;
    }

    public void setGrade_credit(float grade_credit) {
        this.grade_credit = grade_credit;
    }
}
