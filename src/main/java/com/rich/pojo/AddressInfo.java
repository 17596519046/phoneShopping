package com.rich.pojo;

import lombok.Data;

/**
    * address_info
    * 2020-03-14 14:47:49
   */
@Data
public class AddressInfo{
	/**
	*主键id
	*/
	private int	id;
	/**
	*用户注册信息表id
	*/
	private int	userId;
	/**
	*收货手机号
	*/
	private String	receivePhone;
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
	/**
	*是否为默认地址（0否，1是）
	*/
	private int	isDefault;
	/**
	*地址标签(0家,1公司,2学校)
	*/
	private int	addressLabel;
	/**
	*用户自己输入的地址标签
	*/
	private String	createAddressLabel;
}
