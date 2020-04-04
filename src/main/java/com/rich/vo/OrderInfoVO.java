package com.rich.vo;

import lombok.Data;

@Data
public class OrderInfoVO {

    /***
     * 订单编号
     */
    private String orderCode;
    /***
     * 订单金额
     */
    private String price;
    /***
     * 订单id
     */
    private int orderId;
    /***
     * 订单状态
     */
    private int orderStatus;
    /**
     *省
     */
    private String	province;
    /**
     *市
     */
    private String	city;
    /**
     *区
     */
    private String	area;
    /**
     *详情地址
     */
    private String	detailsAddress;



}
