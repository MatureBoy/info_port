package org.zs.databaseconnector.vo;

public class Course {
    private String Course_id;
    private String Course_name;
    private int Course_week;
    private String Course_year;
    private int Course_term;
    private int Course_jie;
    private c_t_c ctc;
    public String getCourse_id() {
        return Course_id;
    }

    public void setCourse_id(String course_id) {
        Course_id = course_id;
    }

    public int getCourse_jie() {
        return Course_jie;
    }

    public void setCourse_jie(int course_jie) {
        Course_jie = course_jie;
    }

    public int getCourse_term() {
        return Course_term;
    }

    public void setCourse_term(int course_term) {
        Course_term = course_term;
    }

    public int getCourse_week() {
        return Course_week;
    }

    public void setCourse_week(int course_week) {
        Course_week = course_week;
    }

    public String getCourse_year() {
        return Course_year;
    }
    public void setCourse_year(String course_year) {
        Course_year = course_year;
    }

    public String getCourse_name() {
        return Course_name;
    }


    public void setCourse_name(String course_name) {
        Course_name = course_name;
    }



    public c_t_c getCtc() {
        return ctc;
    }

    public void setCtc(c_t_c ctc) {
        this.ctc = ctc;
    }
}
