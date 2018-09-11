package org.xh.AdminTest.myMethod;

import org.xh.AdminTest.ConnectDatabase.ConnectDatabase;
import org.xh.AdminTest.myInteface.systemManager;
import org.xh.AdminTest.vo.Account;
import org.xh.AdminTest.vo.ArtMess;
import org.xh.AdminTest.vo.Library;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class systemMangerImpl implements systemManager {
    @Override
    public boolean setStuLibrary(Library abook) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_borrowbook(stu_id,borrow_time,book_name,return_time) values (?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,abook.getStu_id());
            ps.setString(2,abook.getBorrowDate());
            ps.setString(3,abook.getBookName());
            ps.setString(4,abook.getReturnDate());
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean deleteAccount(String account) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="delete from tb_account where account=? ";
        String sql1="delete from tb_counsellor where coun_id=? ";
        String sql2="delete from tb_card where card_id=? ";
        String sql3="delete from tb_teacher where teacher_id=? ";
        String sql4="delete from tb_gov_teacher where gov_teacher_id=? ";
        String sql5="delete from tb_student where stu_id=? ";

        PreparedStatement ps=null;
        PreparedStatement ps1=null;
        PreparedStatement ps2=null;
        PreparedStatement ps3=null;
        PreparedStatement ps4=null;
        PreparedStatement ps5=null;
        int mark=0;
        try{
            ps5=conn.prepareStatement(sql5);
            ps5.setString(1,account);
            mark=ps5.executeUpdate();



            ps4=conn.prepareStatement(sql4);
            ps4.setString(1,account);
            mark=ps4.executeUpdate();



            ps3=conn.prepareStatement(sql3);
            ps3.setString(1,account);
            mark=ps3.executeUpdate();


            ps2=conn.prepareStatement(sql2);
            ps2.setString(1,account);
            mark=ps2.executeUpdate();



            ps1=conn.prepareStatement(sql1);
            ps1.setString(1,account);
            mark=ps1.executeUpdate();


            ps=conn.prepareStatement(sql);
            ps.setString(1,account);
            mark=ps.executeUpdate();

            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<Account> getAllAccountInfo() {
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        List<Account> list=new ArrayList<Account>();
        ResultSet rs=null;
        PreparedStatement ps=null;
        String sql="select * from tb_account";
        try{
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Account newAccount=new Account();
                newAccount.setAccount(rs.getString("account"));
                newAccount.setPwd(rs.getString("password"));
                newAccount.setIdentity(rs.getString("type"));
                list.add(newAccount);
            }
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try{
                if(conn!=null)
                    conn.close();
                if(ps!=null)
                    ps.close();
                if(rs!=null)
                    rs.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public boolean setStuInfo(String stu_id, String name, String sex, int age, String native_place, String instituteName, String phoneNumber, String emailAddress, String addmissionDate, String class_name) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_student(stu_id,stu_name,sex,age,native_place,institute,phone,email,admission,class_name) values (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            ps.setString(2,name);
            ps.setString(6,instituteName);
            ps.setString(3,sex);
            ps.setString(5,native_place);
            ps.setString(7,phoneNumber);
            ps.setString(8,emailAddress);
            ps.setString(9,addmissionDate);
            ps.setString(10,class_name);
            ps.setInt(4,age);
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean setStuMonthPay(String stu_id, double network_fee, double water_fee, double electric_fee, int month) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_expenses(stu_id,network_fee,water_fee,electric_fee,month) values (?,?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            ps.setDouble(2,network_fee);
            ps.setDouble(3,water_fee);
            ps.setDouble(4,electric_fee);
            ps.setInt(5,month);
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean setArtMess(String stu_id, String message, String mess_sender) {
        boolean flag=false;
    ConnectDatabase cdb=new ConnectDatabase("information_port");
    Connection conn=cdb.getConnection();
    String date=getDateNow();
    String sql="insert into tb_stu_artmess(mess_sender,mess_sendee,message,date) values (?,?,?,?)";
    PreparedStatement ps=null;
    int mark=0;
        try{
        ps=conn.prepareStatement(sql);
        ps.setString(1,mess_sender);
        ps.setString(2,stu_id);
        ps.setString(3,message);
        ps.setString(4,date);
        mark=ps.executeUpdate();
        if(mark!=0)
        {
            flag=true;
        }
        return flag;

    }catch (SQLException e){
        e.printStackTrace();
    }
        return flag;
}

    @Override
    public boolean setStuConsumption(String stu_id, String date, String moneyNum) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_consumption(stu_id,date,cons_money) values (?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            ps.setString(2,date);
            ps.setString(3,moneyNum);
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean setStuTuition(String stu_id, String year, String moneyNum, String status) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_tuition(stu_id,year,tuition,status) values (?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            ps.setString(2,year);
            ps.setString(3,moneyNum);
            ps.setString(4,status);
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }



    @Override
    public boolean setBookInfoById(String bookName, String stu_id, String borrow_date, String return_date) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_borrowbook(stu_id,book_name,borrow_time,return_time) values (?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            ps.setString(2,bookName);
            ps.setString(3,borrow_date);
            ps.setString(4,return_date);
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean setStuReOrPunish(String stu_id, String type, String name, String date) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_punish(stu_id,pname,type,date) values (?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,stu_id);
            ps.setString(2,name);
            ps.setString(3,type);
            ps.setString(4,date);
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean releaseMessage(String message) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_sysmess(message,mess_time) values (?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,message);
            ps.setString(2,getDateNow());
            mark=ps.executeUpdate();
            if(mark!=0)
            {
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List<ArtMess> getStuMessToAdmin() {
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="select * from tb_stu_storesysmess";
        PreparedStatement ps=null;
        ResultSet rs=null;
        List<ArtMess> list=new ArrayList<ArtMess>();
        try{
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                ArtMess tempClass=new ArtMess();
                tempClass.setMess_sender(rs.getString("stu_id"));
                tempClass.setMessage(rs.getString("message"));
                tempClass.setDate(rs.getString("mess_time"));
                list.add(tempClass);

            }
            return list;
        }
        catch(SQLException e){
            e.printStackTrace();
        }finally {
            try{
                if(conn!=null)
                    conn.close();
                if(ps!=null)
                    ps.close();
                if(rs!=null)
                    rs.close();
            }catch (SQLException e)
            {
                e.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public boolean setStuedentMoney(String sno, String moneyType, String moneyNum) {
        boolean flag=false;
        String date=getDateNow();
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String sql="insert into tb_stu_reward(stu_id,type,reward_money,date) values (?,?,?,?)";
        PreparedStatement ps=null;
        int mark=0;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,sno);
            ps.setString(2,moneyType);
            ps.setString(3,moneyNum);
            ps.setString(4,date);
            mark=ps.executeUpdate();
            if(mark!=0)
                flag=true;
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public String getDateNow(){
        Calendar now = Calendar.getInstance();
        String date=null;
        int Year;
        int Month;
        int Day;
        Year=now.get(Calendar.YEAR);
        Month=now.get(Calendar.MONTH) + 1;
        Day=now.get(Calendar.DAY_OF_MONTH);
        date=Year+"-"+Month+"-"+Day;
        return date;
    }
}
