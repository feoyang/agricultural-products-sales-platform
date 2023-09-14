package com.taicang.server.entity;

import lombok.Data;

@Data
public class Order {
    private Integer order_id;
    private String title;
    private double price;
    private String content;
    private String order_status;
    private String type;
    private String picture;
    private String own_name;
    private String cooperation_name;
    private String create_time;
    private String update_time;
    private String address;
    private int category_id;
    private int child_id;

    // 省略getter和setter方法
}

