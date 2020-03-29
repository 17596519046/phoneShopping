package com.rich.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 菜单信息VO
 */
@Data
public class MenuInfo {

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
    /**
     * 子菜单信息
     */
    private List<MenuInfo> menuInfoList;
}
