package com.taicang.server.mapper;

import com.taicang.server.entity.Purchase;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PurchaseMapper {
    void addPurchase(Purchase purchase);
    List<Purchase> getPersonalPurchases(String own_name);
}
