package com.rental.dao;

import com.rental.pojo.User;

public interface UserDao {

    //寻找用户名
    public boolean findByUsername(String username);

    //进行插入
    public void insert(User u);

    //筛选是否存在
    public boolean selectByUser(User u);



}
