package com.taicang.server.service;

import com.taicang.server.entity.User;
import com.taicang.server.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public User findByUsername(String username) {
        return userMapper.findByUsername(username);
    }

    public void register(User user) {
        user.setCreate_time(new Date());  // 设置创建时间
        user.setUpdate_time(new Date());  // 设置更新时间
        userMapper.register(user);
    }

    public User findByUserNameAndRole(String userName, String role) {
        return userMapper.findByUserNameAndRole(userName, role);
    }

    public void updateUserInfo(User user) {
        user.setUpdate_time(new Date());
        userMapper.updateUserInfo(user);
    }

    public void updatePassword(User user,String newPassword) {
        user.setPassword(newPassword);
//        System.out.println(user.getUserName());
        userMapper.updatePassword(user);
    }
}
