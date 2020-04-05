package com.rich.pojo;

import lombok.Data;

/**
    * goods 实体类
    * 2020-03-12 15:19:09
   */
@Data
public class Phone {
	//id
	private Integer	id;

	private Integer	typeId;
	/**
	*商品名称
	*/
	private String	productName;
	/**
	*商品价格
	*/
	private String	productPrice;
	/**
	*商品详情
	*/
	private String	productDetail;
	/**
	*商品类型
	*/
	private String	productType;
	/**
	*库存数量
	*/
	private int	productNum;
	/**
	*商品图片地址
	*/
	private String	productImg;
	/**
	*创建时间
	*/
	private String	createTime;
	/**
	*修改时间
	*/
	private String	updateTime;
}
