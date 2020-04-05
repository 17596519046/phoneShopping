package com.rich.mapper;

import com.rich.pojo.User;
import com.rich.pojo.User;
import com.rich.vo.MenuInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BackLoginMapper {
    /**
     * 登录
     * @return
     */
    User tologin(@Param("username") String username, @Param("password") String password);

    /**
     * 添加后台用户信息
     * @param user
     * @return
     */
    boolean saveSystemUser(User user);

    /**
     * 修改后台用户信息
     * @param user
     * @return
     */
    boolean updateSystemUser(User user);

    /**
     * 查询所有用户信息
     * @return
     */
    List<User> selectSystemUserList(int status);

    /**
     * 删除用户
     * @param userId
     */
    void deleteUser(Integer userId);

    User getOneUser(Integer userId);
}
