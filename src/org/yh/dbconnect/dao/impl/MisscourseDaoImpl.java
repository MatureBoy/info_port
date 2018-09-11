package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.MisscourseDao;
import org.yh.dbconnect.vo.Misscourse;

import java.sql.*;
import java.util.*;
//缺勤统计的查询，添加，删除
public class MisscourseDaoImpl implements MisscourseDao {
    @Override//插入缺勤记录方法
    public List<Misscourse> myFind() {
        Connection conn=new Databaseconnect().getConnnection();
        List<Misscourse> list_miss = new ArrayList<Misscourse>();
        String sql = "SELECT * FROM tb_te_checkwork ";
        Statement st_two = null;
        ResultSet rs_two = null;
        try {
            st_two = conn.createStatement();
            rs_two = st_two.executeQuery(sql);
            while (rs_two.next()) {
                Misscourse miss = new Misscourse();
                miss.setTeacher_id(rs_two.getString("teacher_id"));
                miss.setStu_id(rs_two.getString("stu_id"));
                miss.setStu_name(rs_two.getString("stu_name"));
                miss.setCourse_name(rs_two.getString("course_name"));
                miss.setCheck_time((rs_two.getString("check_time")));
                list_miss.add(miss);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (st_two != null) st_two.close();
                if (rs_two != null) rs_two.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_miss;
    }

    @Override//插入缺勤记录方法
    public boolean insertion(String teacher_id, String stu_id, String stu_name, String course_name, String check_time) {
        Connection conn=new Databaseconnect().getConnnection();
        boolean flag=false;
        PreparedStatement ps=null;
        int mark=0;
        String sql="INSERT INTO tb_te_checkwork(teacher_id,stu_id,stu_name,course_name,check_time)values(?,?,?,?,?)";
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,teacher_id);
            ps.setString(2,stu_id);
            ps.setString(3,stu_name);
            ps.setString(4,course_name);
            ps.setString(5,check_time);
            mark=ps.executeUpdate();
            if(mark!=0){
                flag=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try{
                if(ps!=null) ps.close();
                if(conn!=null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return flag;
    }
    @Override//删除缺勤记录方法
    public boolean delete(String stu_id,String course_name,String check_time) {
        Connection conn=new Databaseconnect().getConnnection();
        //Misscourse miss=new Misscourse();
        int count=0;
        boolean flag=false;
        String sql="DELETE FROM tb_te_checkwork WHERE stu_id=? and course_name=? and check_time=?";
        PreparedStatement ps_one=null;
        try{
            ps_one=conn.prepareStatement(sql);
            ps_one.setString(1,stu_id);
            ps_one.setString(2,course_name);
            ps_one.setString(3,check_time);
            count=ps_one.executeUpdate();
            if(count!=0){
                flag=true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(ps_one!=null) ps_one.close();
                if(conn!=null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return flag;
    }
}
