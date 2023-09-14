package com.taicang.server.service;

import com.taicang.server.entity.SellPurchase;
import com.taicang.server.mapper.SellPurchaseMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service
public class SellPurchaseService{
    @Autowired
    private SellPurchaseMapper sellPurchaseMapper;

    public List<SellPurchase> getSellOrders(String ownName) {
        return sellPurchaseMapper.getSellOrders(ownName);
    }
}
