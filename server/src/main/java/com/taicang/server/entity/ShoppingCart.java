package com.taicang.server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShoppingCart {
    private int shopping_id;
    private int order_id;
    private int count;
    private String own_name;
    private Date create_time;
    private Date update_time;
}
