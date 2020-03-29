package com.rich.service.impl;

import com.rich.mapper.BackLoginMapper;
import com.rich.pojo.SystemUser;
import com.rich.service.BackService;
import com.rich.vo.MenuInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class BackServiceImpl implements BackService {

    @Autowired
    BackLoginMapper backLoginMapper;

    /**
     *
     * @param systemUser 用户名
     * @param request
     * @return
     */
    @Override
    public boolean backLogin(SystemUser systemUser, HttpServletRequest request) {
        // 查询数据库获取用户
        SystemUser sys = backLoginMapper.selectAccountPassword(systemUser);
        if (sys == null){
            return false;
        }
        request.getSession().setAttribute("systemUser",sys);
        return true;
    }

    /**
     * 获取菜单权限
     * @param request
     * @return
     */
    @Override
    public List<MenuInfo> selectMenuInfo(HttpServletRequest request) {
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("systemUser");
        //获取权限
        List<MenuInfo> menuList = backLoginMapper.selectRoleMenuList(systemUser.getRoleId());
        List<MenuInfo> sonMenu = new ArrayList<>();
        List<MenuInfo> parentMenu = new ArrayList<>();
        for (MenuInfo key : menuList) {
            if (key.getParentId() == 0){
                parentMenu.add(key);
            }else {
                sonMenu.add(key);
            }
        }
        for (MenuInfo key : parentMenu) {
            List<MenuInfo> newMenu = new ArrayList<>();
            for (MenuInfo menu : sonMenu) {
                //如果父菜单的id等于子菜单的父id 说明是同一个目录下的
                if (key.getId() == menu.getParentId()){
                    newMenu.add(menu);
                }
            }
            key.setMenuInfoList(newMenu);
        }
        return parentMenu;
    }

    /**
     * 添加后台用户信息
     * @param systemUser
     * @return
     */
    @Override
    public boolean saveSystemUser(SystemUser systemUser) {
        return backLoginMapper.saveSystemUser(systemUser.setCreateTime(new Date()).setUpdateTime(new Date()).setStatus(1));
    }

    /**
     * 修改后台用户信息
     * @param systemUser
     * @return
     */
    @Override
    public boolean updateSystemUser(SystemUser systemUser) {
        return backLoginMapper.updateSystemUser(systemUser.setUpdateTime(new Date()));
    }

    /**
     * 查询所有用户信息
     * @return
     */
    @Override
    public List<SystemUser> selectSystemUserList() {
        return backLoginMapper.selectSystemUserList();
    }

    @Override
    public void deleteUser(Integer userId) {
        backLoginMapper.deleteUser(userId);
    }


}
