package org.xh.AdminTest.vo;

public class Course {
    private String courseName;
    private String courseWeek;
    private String courseSection;
    private String courseSemester;
    private String coursePlace;
    private String courseYear;

    public String getCourseYear() {
        return courseYear;
    }

    public void setCourseYear(String courseYear) {
        this.courseYear = courseYear;
    }

    public Course(String courseName, String courseWeek, String courseSection, String courseSemester, String coursePlace, String courseYear, String courseType, String courseExamTime, String courseExamPlace, String courseExamSeat) {
        this.courseName = courseName;
        this.courseWeek = courseWeek;
        this.courseSection = courseSection;
        this.courseSemester = courseSemester;
        this.coursePlace = coursePlace;
        this.courseYear = courseYear;
        this.courseType = courseType;
        this.courseExamTime = courseExamTime;
        this.courseExamPlace = courseExamPlace;
        this.courseExamSeat = courseExamSeat;
    }

    private String courseType;
    private String courseExamTime;
    private String courseExamPlace;
    private String courseExamSeat;
    public String getCourseSemester() {
        return courseSemester;
    }

    public void setCourseSemester(String courseSemester) {
        this.courseSemester = courseSemester;
    }

    public String getCoursePlace() {
        return coursePlace;
    }

    public void setCoursePlace(String coursePlace) {
        this.coursePlace = coursePlace;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCourseExamTime() {
        return courseExamTime;
    }

    public void setCourseExamTime(String courseExamTime) {
        this.courseExamTime = courseExamTime;
    }

    public String getCourseExamPlace() {
        return courseExamPlace;
    }

    public void setCourseExamPlace(String courseExamPlace) {
        this.courseExamPlace = courseExamPlace;
    }

    public Course(String courseName, String courseWeek, String courseSection, String courseSemester, String coursePlace, String courseType, String courseExamTime, String courseExamPlace, String courseExamSeat) {
        this.courseName = courseName;
        this.courseWeek = courseWeek;
        this.courseSection = courseSection;
        this.courseSemester = courseSemester;
        this.coursePlace = coursePlace;
        this.courseType = courseType;
        this.courseExamTime = courseExamTime;
        this.courseExamPlace = courseExamPlace;
        this.courseExamSeat = courseExamSeat;
    }

    public String getCourseExamSeat() {
        return courseExamSeat;
    }

    public void setCourseExamSeat(String courseExamSeat) {
        this.courseExamSeat = courseExamSeat;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseWeek() {
        return courseWeek;
    }

    public void setCourseWeek(String courseWeek) {
        this.courseWeek = courseWeek;
    }

    public String getCourseSection() {
        return courseSection;
    }

    public void setCourseSection(String courseSection) {
        this.courseSection = courseSection;
    }

    public Course() {

    }
    public void outputCourseInfo(){
        System.out.println("课程名称:"+courseName+" 课程周几上课:"+courseWeek+" 课程上课节数:"+courseSection);
    }
}
