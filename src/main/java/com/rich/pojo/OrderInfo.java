package com.rich.pojo;

import lombok.Data;

/**
    * order_info 实体类
    * 2020-03-21 07:27:02
   */
@Data
public class OrderInfo{
	/**
	*id
	*/
	private int	id;
	/**
	*商品Id
	*/
	private int	goodsId;
	/**
	*数量
	*/
	private int	num;
	/**
	*地址Id
	*/
	private int	addressInfoId;
	/**
	*订单编号
	*/
	private String	orderCode;
	/**
	*状态（1：生成订单）
	*/
	private int	orderStatus;
	/**
	*订单金额
	*/
	private String	price;
}
