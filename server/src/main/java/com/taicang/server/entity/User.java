package com.taicang.server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private String user_name;
    private String password;
    private String nick_name;
    private String phone;
    private String identity_num;
    private String address;
    private String role; // "user", "expert", "admin"
    private Date create_time;
    private Date update_time;
    private int integral;
    private int credit;
    private String avatar;
    private String real_name;
}
