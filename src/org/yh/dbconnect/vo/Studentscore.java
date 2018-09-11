package org.yh.dbconnect.vo;

public class Studentscore {
    private String course_name;
    private String year;
    private int semester;
    private float grade_score;
    private float grade_credit;

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

    public float getGrade_score() {
        return grade_score;
    }

    public void setGrade_score(float grade_score) {
        this.grade_score = grade_score;
    }

    public float getGrade_credit() {
        return grade_credit;
    }

    public void setGrade_credit(float grade_credit) {
        this.grade_credit = grade_credit;
    }
}
