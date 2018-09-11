package org.xh.AdminTest.myInteface;

import org.xh.AdminTest.vo.*;
import org.xh.AdminTest.vo.*;

import java.util.List;

public interface studentUser {
    List<SystemMessage> getSystemMessage();
    List<Activity> getMyActivity(String sno);
    List<Activity> getTypeActivity(String type,List<Activity> list);
    List<Money> getMyMoneyInfo(String sno);
    List<Money> getMyMoneyInfoByType(String type,List<Money> list);
    List<Contacter> getContactInfo();
    List<RewardOrPunish> getRewardOrPunishByType(String stu_id,String type);
    List<Library> getMyBookInfo(String stu_id);
    List<Payment> getMyPaymentInfo(String stu_id);
    List<Consumption> getMyConsumptionInfo(String stu_id);
    List<ArtMess> getMyArtMessInfo(String stu_id);
    boolean setMessToAdmin(String mess,String stu_id);
    String getStuName(String stu_id);
    List<MonthPay> getMyMonthPayInfo(String stu_id);
    MonthPay getMyMonthPayByMonth(List<MonthPay> list,int month);
    Student getMyStuInfo(String stu_id);
    List<MyGrade> getMyGrade(String stu_id);
    List<MyGrade> getMyGradeByYear(List<MyGrade> list,String year);
    List<MyGrade> getMyGradeBySemester(List<MyGrade> list,String semester);
    List<MyGrade> getMyGradeByCourNature(List<MyGrade> list,String nature);
    List<MyGrade> getMyGradeByCourName(List<MyGrade> list,String courseName);
    List<Course> getMyCourse(String stu_id);
    List<Course> getMyCourseBySemester(List<Course> list,String semester);
    List<Course> getMyCourseByType(List<Course> list,String type);
    List<Course> getMyCourseByCourName(List<Course> list,String name);
    List<Course> getMyExamInfo(String courseName,String stu_id);
    List<Course> getMylocationAndSemesterCourse(String stu_id,int courseTimeNum,String semester);
    float getMycardLeftMoney(String stu_id);


}
