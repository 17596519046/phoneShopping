package com.rich.pojo;

import lombok.Data;

import java.util.Date;

/**
    * evaluate_inner 实体类
    * 2020-03-25 22:43:00
   */ 
@Data
public class EvaluateInnerVO {
	/**
	*主键id
	*/
	private int	id;
	/**
	*评价内容
	*/
	private String innerRemark;
	/**
	*用户名称
	*/
	private String userName;
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
	*更新时间
	*/
	private Date updateTime;
}
