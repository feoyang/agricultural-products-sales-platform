
package com.taicang.server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Child {
    private String brands;
    private String categories;
    private List<Order> goods;
    private int id;
    private String name;
    private String parentId;
    private String parentName;
    private String picture;
    private String saleProperties;
}