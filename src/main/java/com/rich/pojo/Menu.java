package com.rich.pojo;

import lombok.Data;

import java.util.Date;

/**
    * menu 实体类
    * 2020-03-14 14:35:38
   */ 
@Data
public class Menu{
	/**
	*主键id
	*/
	private int	id;
	/**
	*菜单名称
	*/
	private String	name;
	/**
	*菜单路径
	*/
	private String	action;
	/**
	*创建时间
	*/
	private Date createTime;
	/**
	*更新时间
	*/
	private Date updateTime;
	/**
	*父节点id
	*/
	private int	parentId;
}
