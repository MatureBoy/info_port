package org.xh.AdminTest.myMethod;

import org.xh.AdminTest.ConnectDatabase.ConnectDatabase;
import org.xh.AdminTest.myInteface.userCheck;
import org.xh.AdminTest.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userCheckImpl implements userCheck {
    @Override

    public boolean checkUser(User user) {
        boolean flag=false;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String account=user.getAccount();
        String password=user.getPwd();
        String sql="select * from tb_account where account=? and password = ? ";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,account);
            ps.setString(2,password);
            rs=ps.executeQuery();
            if(rs.next()){
                flag=true;
            }
            return flag;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public String checkIdentity(User user) {
        String identity=null;
        ConnectDatabase cdb=new ConnectDatabase("information_port");
        Connection conn=cdb.getConnection();
        String account=user.getAccount();
        String password=user.getPwd();
        String sql="select type from tb_account where account=? and password = ? ";
        PreparedStatement ps=null;
        ResultSet rs=null;
        try{
            ps=conn.prepareStatement(sql);
            ps.setString(1,account);
            ps.setString(2,password);
            rs=ps.executeQuery();
            if(rs.next()){
                identity=rs.getString("type");
            }
            return identity;

        }catch (SQLException e){
            e.printStackTrace();
        }
        return identity;

    }
}
