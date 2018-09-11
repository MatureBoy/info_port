package org.xh.AdminTest.myMethod;

import org.xh.AdminTest.ConnectDatabase.ConnectDatabase;
import org.xh.AdminTest.myInteface.studentUser;
import org.xh.AdminTest.vo.*;
import org.xh.AdminTest.vo.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class studentUserImpl implements studentUser {


    @Override
    public List<Course> getMyExamInfo(String courseName, String stu_id) {
        List<Course> myCourse = new ArrayList<Course>();
        myCourse = getMyCourse(stu_id);
        List<Course> myExam = new ArrayList<Course>();
        for (int i = 0; i < myCourse.size(); i++) {
            if (myCourse.get(i).getCourseName().equals(courseName)) {
                myExam.add(myCourse.get(i));
            }
        }
        return myExam;
    }

    @Override
    public List<Course> getMyCourseByType(List<Course> list, String type) {
        List<Course> list1 = new ArrayList<Course>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getCourseType().equals(type)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public List<Course> getMyCourseBySemester(List<Course> list, String semester) {
        List<Course> list1 = new ArrayList<Course>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getCourseSemester().equals(semester)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public List<Course> getMyCourseByCourName(List<Course> list, String name) {
        List<Course> list1 = new ArrayList<Course>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getCourseName().equals(name)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public List<Course> getMyCourse(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select c.course_name,c.week,c.section,c.year,c.semester,g.seat_num,c.course_place,c.exam_time,c.exam_place,cs.type from tb_grade as g,tb_course as c,tb_cscg as cs where cs.stu_id=? and cs.course_id=c.course_id and g.grade_id=cs.grade_id;";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Course> list = new ArrayList<Course>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course myCourse = new Course();
                myCourse.setCourseName(rs.getString("c.course_name"));
                myCourse.setCourseSection(rs.getString("c.section"));
                myCourse.setCourseWeek(rs.getString("c.week"));
                myCourse.setCourseSemester(rs.getString("c.semester"));
                myCourse.setCoursePlace(rs.getString("c.course_place"));
                myCourse.setCourseType(rs.getString("cs.type"));
                myCourse.setCourseExamPlace(rs.getString("c.exam_place"));
                myCourse.setCourseExamTime(rs.getString("c.exam_time"));
                myCourse.setCourseExamSeat(rs.getString("g.seat_num"));
                myCourse.setCourseYear(rs.getString("c.year"));
                list.add(myCourse);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<MyGrade> getMyGradeByYear(List<MyGrade> list, String year) {

        List<MyGrade> list1 = new ArrayList<MyGrade>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getYear().equals(year)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public List<MyGrade> getMyGradeBySemester(List<MyGrade> list, String semester) {
        List<MyGrade> list1 = new ArrayList<MyGrade>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getSemester().equals(semester)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public List<MyGrade> getMyGradeByCourNature(List<MyGrade> list, String nature) {
        List<MyGrade> list1 = new ArrayList<MyGrade>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getNature().equals(nature)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public List<MyGrade> getMyGradeByCourName(List<MyGrade> list, String courseName) {
        List<MyGrade> list1 = new ArrayList<MyGrade>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getCourseName().equals(courseName)) {
                list1.add(list.get(i));
            }
        }
        return list1;
    }

    @Override
    public String getStuName(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String stu_name=null;
        String sql = "select stu_name from tb_student where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            if(rs.next())
                stu_name=rs.getString("stu_name");
            return stu_name;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return stu_name;
    }

    @Override
    public boolean setMessToAdmin(String mess, String stu_id) {
        boolean flag = false;
        String date = getDateNow();
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "insert into tb_stu_storesysmess(stu_id,message,mess_time) values (?,?,?)";
        PreparedStatement ps = null;
        int mark = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            ps.setString(2, mess);
            ps.setString(3, date);
            mark = ps.executeUpdate();
            if (mark != 0)
                flag = true;
            return flag;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<MyGrade> getMyGrade(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select c.course_name,c.year,c.semester,cs.type,g.grade_score,g.grade_credit from tb_course as c,tb_grade as g,tb_cscg as cs where cs.stu_id=? and cs.course_id=c.course_id and cs.grade_id=g.grade_id;";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<MyGrade> list = new ArrayList<MyGrade>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                MyGrade tempClass = new MyGrade();
                tempClass.setCourseName(rs.getString("c.course_name"));
                tempClass.setCourseGrade(rs.getString("g.grade_score"));
                tempClass.setCourseGredit(rs.getString("g.grade_credit"));
                tempClass.setNature(rs.getString("cs.type"));
                tempClass.setSemester(rs.getString("c.semester"));
                tempClass.setYear(rs.getString("year"));
                list.add(tempClass);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<ArtMess> getMyArtMessInfo(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_stu_artmess where mess_sendee=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ArtMess> list = new ArrayList<ArtMess>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                ArtMess tempClass = new ArtMess();
                tempClass.setMess_sender(rs.getString("mess_sender"));
                tempClass.setMess_sendee(rs.getString("mess_sendee"));
                tempClass.setMessage(rs.getString("message"));
                tempClass.setDate(rs.getString("date"));
                list.add(tempClass);

            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public Student getMyStuInfo(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_student where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        Student st = new Student();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            if (rs.next()) {
                st.setStu_id(rs.getString("stu_id"));
                st.setName(rs.getString("stu_name"));
                st.setSex(rs.getString("sex"));
                st.setAge(rs.getInt("age"));
                st.setNative_place(rs.getString("native_place"));
                st.setInstituteName(rs.getString("institute"));
                st.setPhoneNumber(rs.getString("phone"));
                st.setEmailAddress(rs.getString("email"));
                st.setAddmissionDate(rs.getString("admission"));
                st.setClass_name(rs.getString("class_name"));
            }
            return st;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return st;
    }

    @Override
    public List<MonthPay> getMyMonthPayInfo(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_stu_expenses where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<MonthPay> list = new ArrayList<MonthPay>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                MonthPay tempClass = new MonthPay();
                tempClass.setStu_id(rs.getString("stu_id"));
                tempClass.setElectric_fee(rs.getDouble("electric_fee"));
                tempClass.setMonth(rs.getInt("month"));
                tempClass.setWater_fee(rs.getDouble("water_fee"));
                tempClass.setNetwork_fee(rs.getDouble("network_fee"));
                list.add(tempClass);

            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<Consumption> getMyConsumptionInfo(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_stu_consumption where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Consumption> list = new ArrayList<Consumption>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Consumption tempClass = new Consumption();
                tempClass.setStu_id(rs.getString("stu_id"));
                tempClass.setDate(rs.getString("date"));
                tempClass.setConsumptionMoney(rs.getString("cons_money"));
                list.add(tempClass);

            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<Payment> getMyPaymentInfo(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_stu_tuition where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Payment> list = new ArrayList<Payment>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Payment tempClass = new Payment();
                tempClass.setStu_id(rs.getString("stu_id"));
                tempClass.setStu_num(rs.getString("tuition"));
                tempClass.setStu_status(rs.getString("status"));
                tempClass.setStu_year(rs.getString("year"));
                list.add(tempClass);

            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<Library> getMyBookInfo(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_stu_borrowbook where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Library> list = new ArrayList<Library>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Library tempClass = new Library();
                tempClass.setBorrowDate(rs.getString("borrow_time"));
                tempClass.setBookName(rs.getString("book_name"));
                tempClass.setReturnDate(rs.getString("return_time"));
                tempClass.setStu_id(rs.getString("stu_id"));
                list.add(tempClass);

            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<RewardOrPunish> getRewardOrPunishByType(String stu_id, String type) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        List<RewardOrPunish> list = new ArrayList<RewardOrPunish>();
        String sql = "select * from tb_stu_punish where type=? and stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, type);
            ps.setString(2, stu_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                RewardOrPunish tempClass = new RewardOrPunish();
                tempClass.setDate(rs.getDate("date"));
                tempClass.setName(rs.getString("pname"));
                tempClass.setType(rs.getString("type"));
                tempClass.setStu_id(rs.getString("stu_id"));
                if (tempClass.getType().equals(type))
                    list.add(tempClass);
            }
            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null)
                    conn.close();
                if (ps != null)
                    ps.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public List<Money> getMyMoneyInfo(String sno) {

        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        List<Money> list = new ArrayList<Money>();
        String sql = "select * from tb_stu_reward where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, sno);
            rs = ps.executeQuery();
            while (rs.next()) {
                Money tempClass = new Money();
                tempClass.setMoneyNum(rs.getFloat("reward_money"));
                tempClass.setMoneytype(rs.getString("type"));
                tempClass.setDate(rs.getString("date"));
                list.add(tempClass);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null)
                    ps.close();
                if (conn != null)
                    conn.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return list;
    }

    @Override
    public List<Money> getMyMoneyInfoByType(String type, List<Money> list) {

        List<Money> list1 = new ArrayList<Money>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getMoneytype().equals(type)) {
                list1.add(list.get(i));

            }
        }
        return list1;
    }

    @Override
    public List<Contacter> getContactInfo() {
        List<Contacter> list = new ArrayList<Contacter>();
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        String sql = "select * from tb_stu_contact";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Contacter tempClass = new Contacter();
                tempClass.setDepartmentName(rs.getString("dept_name"));
                tempClass.setContactWay(rs.getString("dept_contact"));
                list.add(tempClass);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null)
                    ps.close();
                if (conn != null)
                    conn.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return list;
    }


    @Override
    public List<Activity> getMyActivity(String sno) {

        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        List<Activity> list = new ArrayList<Activity>();
        String sql = "select * from tb_stu_practice where stu_id=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, sno);
            rs = ps.executeQuery();
            while (rs.next()) {
                Activity tempClass = new Activity();
                tempClass.setActivityDate(rs.getDate("date"));
                tempClass.setActivityName(rs.getString("pra_name"));
                tempClass.setActivityType(rs.getString("type"));
                list.add(tempClass);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null)
                    ps.close();
                if (conn != null)
                    conn.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return list;
    }


    @Override
    public List<Activity> getTypeActivity(String type, List<Activity> list) {
        List<Activity> list1 = new ArrayList<Activity>();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getActivityType().equals(type)) {
                list1.add(list.get(i));

            }
        }
        return list1;
    }

    @Override
    public List<SystemMessage> getSystemMessage() {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        List<SystemMessage> list = new ArrayList<SystemMessage>();
        String sql = "select * from tb_stu_sysmess";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                SystemMessage tempClass = new SystemMessage();
                tempClass.setInfo(rs.getString("message"));
                tempClass.setDate(rs.getDate("mess_time"));
                list.add(tempClass);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null)
                    ps.close();
                if (conn != null)
                    conn.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return list;
    }

    @Override
    public MonthPay getMyMonthPayByMonth(List<MonthPay> list, int month) {
        MonthPay ThisMonthPay = new MonthPay();
        for (int i = 0; i < list.size(); i++)

        {
            if(list.get(i).getMonth()==month)
            {
                ThisMonthPay=list.get(i);
                break;
            }

        }
        return ThisMonthPay;
    }

    @Override
    public float getMycardLeftMoney(String stu_id) {
        ConnectDatabase cdb = new ConnectDatabase("information_port");
        Connection conn = cdb.getConnection();
        List<SystemMessage> list = new ArrayList<SystemMessage>();
        String sql = "select * from tb_card where card_id=?";
        PreparedStatement ps = null;
        float leftMoney=-1;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            rs = ps.executeQuery();
            if(rs.next())
            {
                leftMoney=rs.getFloat("curr_money");
            }
            return leftMoney;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null)
                    ps.close();
                if (conn != null)
                    conn.close();
                if (rs != null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return leftMoney;
    }

    public String getDateNow() {
        Calendar now = Calendar.getInstance();
        String date = null;
        int Year;
        int Month;
        int Day;
        Year = now.get(Calendar.YEAR);
        Month = now.get(Calendar.MONTH) + 1;
        Day = now.get(Calendar.DAY_OF_MONTH);
        date = Year + "-" + Month + "-" + Day;
        return date;
    }

    @Override
    public List<Course> getMylocationAndSemesterCourse(String stu_id, int courseTimeNum, String semester) {
        List<Course> myCourseAll = getMyCourse(stu_id);
        List<Course> myCourseSemeseter = getMyCourseBySemester(myCourseAll, semester);
        List<Course> rcourse=new ArrayList<Course>();
        for (int i = 0; i < myCourseSemeseter.size(); i++) {
            int courseTime1 = Integer.parseInt(myCourseSemeseter.get(i).getCourseSection());
            if (courseTime1 == 1) {
                if (courseTimeNum == 1 || courseTimeNum == 2) {
                        rcourse.add(myCourseSemeseter.get(i));
                }

            } else if (courseTime1 == 2) {
                if (courseTimeNum == 3 || courseTimeNum == 4) {
                    rcourse.add(myCourseSemeseter.get(i));
                }
            } else if (courseTime1 == 3) {
                if (courseTimeNum == 5 || courseTimeNum == 6) {
                    rcourse.add(myCourseSemeseter.get(i));
                }
            } else {
                if (courseTimeNum == 7 || courseTimeNum == 8) {
                    rcourse.add(myCourseSemeseter.get(i));
                }
            }

        }
        return rcourse;
    }

}

