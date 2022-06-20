package com.rental.dao.impl;

import com.rental.jdbc.MySqlManager;
import com.rental.dao.UserDao;
import com.rental.pojo.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    private PreparedStatement pstm = null;
    private ResultSet rs = null;

    @Override
    public boolean findByUsername(String username) {
        boolean flag = false;
        String sql = "select * from user where username = ?";

        pstm = MySqlManager.getPreparedStatement(sql);
        try {
            pstm.setString(1,username);
            rs = pstm.executeQuery();
            if(rs.next()){
                flag = true;
            }
            rs.close();
            MySqlManager.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public void insert(User u) {
        String sql = "insert into user(username,password) values(?,?)";
        pstm = MySqlManager.getPreparedStatement(sql);
        try {
            pstm.setString(1, u.getUsername());
            pstm.setString(2,  u.getPassword());

            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            MySqlManager.close();
        }
    }

    @Override
    public boolean selectByUser(User u) {
        boolean flag = false;
        String sql = "select * from user where username = ? and password=?";
        pstm = MySqlManager.getPreparedStatement(sql);
        try {
            pstm.setString(1, u.getUsername());
            pstm.setString(2, u.getPassword());
            rs = pstm.executeQuery();
            if (rs.next()) {
                flag = true;
            }

            rs.close();
            MySqlManager.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
}
