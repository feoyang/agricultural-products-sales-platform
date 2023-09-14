package com.taicang.server.service;

import com.taicang.server.entity.Order;
import com.taicang.server.entity.Page;
import com.taicang.server.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    public Page selectbyPage(Integer pageNo, Integer pageSize) {
        int start = (pageNo - 1) * pageSize;

        List<Order> orders = orderMapper.selectByPage(start, pageSize);
        int totalRows = orderMapper.countTotalRows();

        Page page = new Page();
        page.setPageNo(pageNo);
        page.setPageSize(pageSize);
        page.setTotalRows(totalRows);
        page.setOrders(orders);

        return page;
    }


    // 根据id查询商品
    public Order selectById(Integer id) {
        return orderMapper.selectById(id);
    }

    // 新增商品
    public void insert(Order order) {
        orderMapper.insert(order);
    }

    // 修改商品
    public void update(Order order) {
        orderMapper.update(order);
    }

    // 删除商品
    public void delete(Integer id) {
        orderMapper.delete(id);
    }

    // 根据title查询商品
    public List<Order> selectByTitle(String title) {
        return orderMapper.selectByTitle(title);
    }

    // 查找上一个自增id AUTO_INCREMENT
    public Integer selectLastInsertId() {
        return orderMapper.selectLastInsertId();
    }

    public List<Order> getAllOrders() {
        System.out.println(orderMapper.getAllOrders());
        return orderMapper.getAllOrders();
    }


}


