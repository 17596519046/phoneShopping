package com.rich.pojo;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.experimental.Accessors;

import java.beans.Transient;
import java.util.Date;

/**
    * system_user 实体类
    * 2020-03-11 12:30:40
   */
@Data
@Accessors(chain = true)
public class SystemUser {
	/**
	*主键id
	*/
	private int	id;
	/**
	*用户名
	*/
	private String	loginName;
	/**
	*密码
	*/
	private String	loginPassword;
	/**
	*邮箱
	*/
	private String	userEmail;
	/**
	*手机号
	*/
	private String	userPhone;
	/**
	*创建时间
	*/
	@JsonFormat(timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	/**
	*修改时间
	*/
	private Date updateTime;
	/**
	*角色id
	*/
	private int	roleId;

	/**
	 *状态（0:前台用户，1：后台用户）
	 */
	private int	status;

    @TableField(exist=false)
	private String roleName;

}
