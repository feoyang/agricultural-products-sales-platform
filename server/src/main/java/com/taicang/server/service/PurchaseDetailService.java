package com.taicang.server.service;

import com.taicang.server.entity.PurchaseDetail;
import com.taicang.server.mapper.PurchaseDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PurchaseDetailService {
    @Autowired
    private PurchaseDetailMapper purchaseDetailMapper;

    public void addPurchaseDetail(PurchaseDetail purchaseDetail) {
        purchaseDetailMapper.addPurchaseDetail(purchaseDetail);
    }

    public List<PurchaseDetail> getPurchaseDetailsByPurchaseId(int purchaseId) {
        return purchaseDetailMapper.getPurchaseDetailsByPurchaseId(purchaseId);
    }
}
