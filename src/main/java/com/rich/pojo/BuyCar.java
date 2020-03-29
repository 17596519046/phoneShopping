package com.rich.pojo;

import lombok.Data;

import java.util.Date;

/**
    * buy_car 实体类
    * 2020-03-12 17:19:50
   */ 
@Data
public class BuyCar{
	/**
	*主键id
	*/
	private int	id;
	/**
	*商品的数量
	*/
	private int	num;
	/**
	*商品id
	*/
	private int	goodsId;
	/**
	*用户id
	*/
	private int	userId;
	/**
	*创建时间
	*/
	private Date createTime;
	/**
	*修改时间
	*/
	private Date updateTime;
	/**
	*订单id
	*/
	private int orderId;
}
