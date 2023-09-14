package com.taicang.server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PurchaseDetail {
    private int detailI_id;
    private int purchaseId;
    private int order_id;
    private BigDecimal unit_price;
    private BigDecimal sum_price;
    private int count;
}
