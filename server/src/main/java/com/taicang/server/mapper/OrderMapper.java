package com.taicang.server.mapper;

import com.taicang.server.entity.Order;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderMapper {

    Order selectById(Integer id);

    List<Order> selectByPage(int start, int pageSize);

    int countTotalRows();

    void insert(Order order);

    void update(Order order);

    void delete(Integer id);

     List<Order> selectByTitle(String title);

    Integer selectLastInsertId();

    List<Order> getAllOrders();
}

