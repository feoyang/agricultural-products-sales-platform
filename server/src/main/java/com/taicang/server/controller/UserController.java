package com.taicang.server.controller;

import com.taicang.server.entity.User;
import com.taicang.server.mapper.UserMapper;
import com.taicang.server.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
public class UserController {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @DeleteMapping("/user/{user_name}/delete")
    public Integer delete(@PathVariable Integer id) {
        return userMapper.deleteById(id);
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody User loginUser) {
        User user = userService.findByUserNameAndRole(loginUser.getUser_name(), loginUser.getRole());
        if(user != null && user.getPassword().equals(loginUser.getPassword())) {
            Map<String, String> response = new HashMap<>();
            response.put("message", "登录成功");
            response.put("role", user.getRole());
            return new ResponseEntity<>(response, HttpStatus.OK);
        }
        return ResponseEntity.badRequest().body("用户名或密码错误");
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody User user) {
        User user_temp = userService.findByUsername(user.getUser_name());
        if(user_temp == null) {
            userService.register(user);
            return ResponseEntity.ok("注册成功");
        }else {
            return ResponseEntity.badRequest().body("用户已存在");
        }
    }

    @PostMapping("/user/{user_name}/updateInfo")
    public ResponseEntity<?> updateUserInfo(@RequestBody User user) {
        userService.updateUserInfo(user);
        return ResponseEntity.ok("个人信息更新成功");
    }

    @PostMapping("/user/{user_name}/updatePassword")
    public ResponseEntity<?> updatePassword(@RequestParam String userName,@RequestParam String oldPassword,@RequestParam String newPassword) {
        User user = userService.findByUsername(userName);
//        System.out.println(user);
        if(user != null && user.getPassword().equals(oldPassword) && !oldPassword.equals(newPassword)) {
            userService.updatePassword(user,newPassword);
            return ResponseEntity.ok("密码更新成功");
        }
        return ResponseEntity.ok("密码错误，更新失败");
    }

}
