package com.taicang.server.mapper;

import com.taicang.server.entity.PurchaseDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PurchaseDetailMapper {
    void addPurchaseDetail(PurchaseDetail purchaseDetail);
    List<PurchaseDetail> getPurchaseDetailsByPurchaseId(int purchase_id);
}
