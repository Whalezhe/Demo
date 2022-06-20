package com.rental.service;

import com.rental.pojo.User;

public interface UserService {

    //根据用户名查看账号是否存在
    public boolean check(String username);

    //根据User登录
    public boolean login(User u);

    //进行注册
    public void insert(User u);
}
