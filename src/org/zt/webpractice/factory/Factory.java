package org.zt.webpractice.factory;

import org.zt.webpractice.DatabaseConnection;
import org.zt.webpractice.vo.Course;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class Factory {
    public PreparedStatement getPreparedStatement(String sql) throws SQLException {
        return new DatabaseConnection().getConnection().prepareStatement(sql);
    }

    public String getCourseInfo(int section, int week, List<Course> courseList) {
        for (Course course : courseList) {
            if (course.getWeek() == week && course.getSection() == section) {
                return course.getName()  +"<br>" +course.getPlace();
            }
        }
        return "<br><br>";
    }
}
