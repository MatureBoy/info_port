package org.xh.AdminTest.myInteface;

import org.xh.AdminTest.vo.Account;
import org.xh.AdminTest.vo.ArtMess;
import org.xh.AdminTest.vo.Library;

import java.util.List;

public interface systemManager {
    boolean releaseMessage(String message);
    boolean setStuedentMoney(String sno,String moneyType,String moneyNum);
    boolean setStuReOrPunish(String stu_id,String type,String name,String date);
    boolean setBookInfoById(String bookName,String stu_id,String borror_date,String return_date);
    boolean setStuTuition(String stu_id,String year,String moneyNum,String status);
    boolean setStuConsumption(String stu_id,String date,String moneyNum);
    boolean setArtMess(String stu_id,String message,String mess_sender);
    List<ArtMess> getStuMessToAdmin();
    boolean setStuMonthPay(String stu_id,double network_fee,double water_fee,double electric_fee,int month);
    List<Account> getAllAccountInfo();
    boolean setStuLibrary(Library abook);
    boolean deleteAccount(String account);
    boolean setStuInfo(String stu_id, String name, String sex, int age, String native_place, String instituteName, String phoneNumber, String emailAddress, String addmissionDate, String class_name);
}
