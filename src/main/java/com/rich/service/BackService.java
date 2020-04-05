package com.rich.service;

import com.rich.pojo.User;
import com.rich.vo.MenuInfo;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface BackService {
    /**
     * 后台登录接口
     *
     * @return
     */
    boolean tologin(String username, String password, HttpServletRequest request);


    /**
     * 添加后台用户信息
     *
     * @param user
     * @return
     */
    boolean saveSystemUser(User user);

    /**
     * 修改后台用户信息
     *
     * @param user
     * @return
     */
    boolean updateSystemUser(User user);

    /**
     * 查询所有用户信息
     *
     * @return
     */
    List<User> selectSystemUserList(int status);

    /**
     * 删除用户
     *
     * @param userId
     */
    void deleteUser(Integer userId);

    /**
     * 通过用户Id获取用户信息
     * @param userId
     * @return
     */
    User getOneUser(Integer userId);
}
