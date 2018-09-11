package org.xh.AdminTest.vo;

public class MyGrade {
    private String courseName;
    private String courseGrade;
    private String courseGredit;
    private String year;
    private String semester;
    private String nature;

    public MyGrade(String courseName, String courseGrade, String courseGredit, String year, String semester, String nature) {
        this.courseName = courseName;
        this.courseGrade = courseGrade;
        this.courseGredit = courseGredit;
        this.year = year;
        this.semester = semester;
        this.nature = nature;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseGrade() {
        return courseGrade;
    }

    public void setCourseGrade(String courseGrade) {
        this.courseGrade = courseGrade;
    }

    public String getCourseGredit() {
        return courseGredit;
    }

    public void setCourseGredit(String courseGredit) {
        this.courseGredit = courseGredit;
    }

    public MyGrade() {

    }
    public void outputMyGradeInfo(){
        System.out.println("课程名:"+courseName+" 成绩："+courseGrade+" 学分："+courseGredit);
    }
}
