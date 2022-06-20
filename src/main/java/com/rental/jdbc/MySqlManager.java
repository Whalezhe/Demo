package com.rental.jdbc;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 重点返回预处理对象
 */
public class MySqlManager {
    private static DataSource dataSource;
    private static Connection conn = null;
    private static PreparedStatement pstm = null;

    static {
        try {
            //加载配置文件
            Properties prop = new Properties();
            prop.load(new FileInputStream("D:\\CODE\\Java\\workspace\\tutor-manage-system\\src\\main\\resources\\druid.properties"));
            dataSource = DruidDataSourceFactory.createDataSource(prop);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //获取连接
    public static Connection getConnection(){
        try {
            conn = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    //获得预处理对象
    public static PreparedStatement getPreparedStatement(String sql){
        try {
            pstm = getConnection().prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pstm;
    }

    //关闭连接
    public static void close(){
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(pstm != null){
            try {
                pstm.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
