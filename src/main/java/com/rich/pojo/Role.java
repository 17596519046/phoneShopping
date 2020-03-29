package com.rich.pojo;

import lombok.Data;

/**
    * role 实体类
    * 2020-03-14 14:37:39
   */ 
@Data
public class Role{
	/**
	*主键id
	*/
	private int	id;
	/**
	*角色名称
	*/
	private String	name;
	/**
	*创建时间
	*/
	private String	create_time;
	/**
	*修改时间
	*/
	private String	update_time;
}
