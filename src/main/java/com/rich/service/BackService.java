package com.rich.service;

import com.rich.pojo.SystemUser;
import com.rich.vo.MenuInfo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface BackService {
    /**
     * 后台登录接口
     * @param systemUser 用户名
     * @return
     */
    boolean backLogin(SystemUser systemUser, HttpServletRequest request);

    /**
     * 获取菜单权限
     * @return
     */
    List<MenuInfo> selectMenuInfo(HttpServletRequest request);

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
