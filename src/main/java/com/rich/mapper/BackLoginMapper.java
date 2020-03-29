package com.rich.mapper;

import com.rich.pojo.SystemUser;
import com.rich.vo.MenuInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BackLoginMapper {
    /**
     * 登录
     * @param systemUser
     * @return
     */
    SystemUser selectAccountPassword(SystemUser systemUser);

    /**
     * 根据角色id获取对应所有的菜单id
     * @param roleId 角色id
     */
    List<MenuInfo> selectRoleMenuList(Integer roleId);

    /**
     * 添加后台用户信息
     * @param systemUser
     * @return
     */
    boolean saveSystemUser(SystemUser systemUser);

    /**
     * 修改后台用户信息
     * @param systemUser
     * @return
     */
    boolean updateSystemUser(SystemUser systemUser);

    /**
     * 查询所有用户信息
     * @return
     */
    List<SystemUser> selectSystemUserList();

    /**
     * 删除用户
     * @param userId
     */
    void deleteUser(Integer userId);
}
