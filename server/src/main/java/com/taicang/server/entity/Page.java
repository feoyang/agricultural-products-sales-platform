package com.taicang.server.entity;

import lombok.Data;

import java.util.List;

@Data
public class Page {
    private Integer pageNo;//⻚号
    private Integer pageSize;//每⻚⾏数 ⻚⼤⼩
    private Integer totalRows;//总⾏数
    private List<Order> orders;

}

