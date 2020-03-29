package com.rich.pojo;

import lombok.Data;

/**
    * role_menu 实体类
    * 2020-03-14 14:38:09
   */ 
@Data
public class RoleMenu{
	/**
	*主键id
	*/
	private int	id;
	/**
	*角色id
	*/
	private int	roleId;
	/**
	*菜单id
	*/
	private int	menuId;
}
