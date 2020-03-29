package com.rich.vo;

import lombok.Data;

@Data
public class BuyCarInfo {

    /***
     * 商品名称
     */
    private String goodsName;
    /***
     * 商品价格
     */
    private String price;
    /***
     * 商品购买数量
     */
    private int num;
    /***
     * 主键id
     */
    private int id;
    /***
     * 商品id
     */
    private int goodsId;
    /***
     * 商品图片地址
     */
    private String img;
    /***
     * 订单id
     */
    private int orderId;

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
