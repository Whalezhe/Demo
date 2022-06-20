package com.rental.service.impl;

import com.rental.dao.impl.UserDaoImpl;
import com.rental.pojo.User;
import com.rental.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDaoImpl userDao = new UserDaoImpl();

    @Override
    public boolean check(String username) {
        return userDao.findByUsername(username);
    }

    @Override
    public boolean login(User u) {
        return userDao.selectByUser(u);
    }

    @Override
    public void insert(User u) {
        userDao.insert(u);
    }
}
