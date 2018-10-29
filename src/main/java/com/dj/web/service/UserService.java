package com.dj.web.service;

import com.dj.web.mapper.UserMapper;
import com.dj.web.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User getUserUsingId(String id) {
        System.out.println(userMapper.getUserUsingId(Integer.parseInt(id)).toString());
        return userMapper.getUserUsingId(Integer.parseInt(id));
    }
    public void ininsertUser(User user){
        userMapper.insertUser(user);
    }
}