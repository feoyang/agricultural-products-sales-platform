package com.taicang.server.service;

import com.taicang.server.entity.Purchase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.taicang.server.mapper.PurchaseMapper;

import java.util.Date;
import java.util.List;

@Service
public class PurchaseService {
    @Autowired
    private PurchaseMapper purchaseMapper;

    public void addPurchase(Purchase purchase) {
//        System.out.println(purchase.getOwn_name());
        purchase.setCreate_time(new Date());
        purchase.setUpdate_time(new Date());
        purchaseMapper.addPurchase(purchase);
    }

    public List<Purchase> getPersonalPurchases(String ownName) {
        return purchaseMapper.getPersonalPurchases(ownName);
    }
}
