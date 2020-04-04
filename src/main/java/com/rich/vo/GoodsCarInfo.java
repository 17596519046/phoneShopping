package com.rich.vo;

import lombok.Data;

@Data
public class GoodsCarInfo {

    /***
     * 商品名称
     */
    private String productName;
    /***
     * 商品价格
     */
    private String productPrice;
    /***
     * 商品购买数量
     */
    private int buyNum;
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
    private String productImg;
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
