package com.rich.service.impl;

import com.rich.mapper.BackLoginMapper;
import com.rich.pojo.User;
import com.rich.pojo.User;
import com.rich.service.BackService;
import com.rich.vo.MenuInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class BackServiceImpl implements BackService {

    @Autowired
    BackLoginMapper backLoginMapper;

    /**
     * 登陆接口
     *
     * @param username
     * @param password
     * @return
     */
    @Override
    public boolean tologin(String username, String password, HttpServletRequest request) {
        // 查询数据库获取用户
        User sys = backLoginMapper.tologin(username, password);
        if (sys == null) {
            return false;
        }
        request.getSession().setAttribute("systemUser", sys);
        return true;
    }

    /**
     * 添加后台用户信息
     *
     * @param user
     * @return
     */
    @Override
    public boolean saveSystemUser(User user) {
        return backLoginMapper.saveSystemUser(user.setCreateTime(new Date()).setUpdateTime(new Date()).setStatus(1));
    }

    /**
     * 修改后台用户信息
     *
     * @param user
     * @return
     */
    @Override
    public boolean updateSystemUser(User user) {
        return backLoginMapper.updateSystemUser(user.setUpdateTime(new Date()));
    }

    /**
     * 查询所有用户信息
     *
     * @return
     */
    @Override
    public List<User> selectSystemUserList(int status) {
        List<User> userList = backLoginMapper.selectSystemUserList(status);
        SimpleDateFormat format = new SimpleDateFormat("YY-MM-dd HH:mm:ss");
        for (User user : userList) {
            // 判断是否是管理员还是普通管理员
            if (user.getRoleId() == 1) {
                user.setRoleName("超级管理员");
            }
            if (user.getRoleId() == 0) {
                user.setRoleName("普通管理员");
            }
            if (user.getRoleId() == 3) {
                user.setRoleName("普通用户");
            }
            // 格式化时间为 年-月-日 时:分:秒
            String s = format.format(user.getCreateTime());
            user.setCretatDate(s);
        }
        return userList;
    }

    @Override
    public void deleteUser(Integer userId) {
        backLoginMapper.deleteUser(userId);
    }

    @Override
    public User getOneUser(Integer userId) {
        User user = backLoginMapper.getOneUser(userId);
        return user;
    }


}
