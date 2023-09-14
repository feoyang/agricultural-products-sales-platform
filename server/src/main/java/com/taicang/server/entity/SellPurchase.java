package com.taicang.server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.sql.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SellPurchase {
    private int sell_purchaseId;
    private int purchase_id;
    private String own_name;
    private int purchase_type;
    private BigDecimal unit_price;
    private BigDecimal sum_price;
    private String address;
    private int purchase_status;
    private Date create_time;
    private Date update_time;
    private int order_id;
}
