package com.taicang.server.mapper;

import com.taicang.server.entity.SellPurchase;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SellPurchaseMapper {
    List<SellPurchase> getSellOrders(String own_name);
}
