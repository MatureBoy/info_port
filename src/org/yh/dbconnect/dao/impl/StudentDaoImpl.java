package org.yh.dbconnect.dao.impl;

import org.yh.dbconnect.dao.Databaseconnect;
import org.yh.dbconnect.dao.StudentDao;
import org.yh.dbconnect.vo.Counseller;
import org.yh.dbconnect.vo.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl implements StudentDao{
    @Override
    public List<Student> Myfind(String class_id) {
        Connection conn = new Databaseconnect().getConnnection();
        List<Student> list_stu=new ArrayList<>();
        String sql="SELECT DISTINCT tb_student.stu_id,tb_student.stu_name,tb_student.sex,tb_student.age,tb_student.native_place,tb_student.institute,tb_student.class_name,tb_student.phone,tb_student.email,tb_student.admission FROM tb_student,tb_cscg WHERE tb_cscg.stu_id =tb_student.stu_id  AND tb_cscg.class_id=?";
        PreparedStatement ps=null;
        ResultSet re=null;
        try {
            ps=conn.prepareStatement(sql);
            ps.setString(1,class_id);
            re=ps.executeQuery();
            int j=0;
            while (re.next()) {
                Student student = new Student();
                student.setStu_id(re.getString("tb_student.stu_id"));
                student.setStu_name(re.getString("tb_student.stu_name"));
                student.setSex(re.getString("tb_student.sex"));
                student.setAge(re.getInt("tb_student.age"));
                student.setNative_place(re.getString("tb_student.native_place"));
                student.setInstitute(re.getString("tb_student.institute"));
                student.setClass_name(re.getString("tb_student.class_name"));
                student.setPhone(re.getString("tb_student.phone"));
                student.setEmail(re.getString("tb_student.email"));
                student.setAdmission(re.getString("tb_student.admission"));
                list_stu.add(student);
                j++;
                if(j<5){
                for(int i=0;i<list_stu.size();i++)
                {
                    System.out.println("stuId  "+list_stu.get(i).getStu_id());
                }}
            }
            return list_stu;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(ps!=null) ps.close();
                if (conn != null) conn.close();
                if(re!=null) re.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list_stu;
    }

}
