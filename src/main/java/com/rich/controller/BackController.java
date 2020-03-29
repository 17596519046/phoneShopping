package com.rich.controller;

import com.rich.pojo.SystemUser;
import com.rich.service.BackService;
import com.rich.vo.MenuInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RequestMapping("/back/")
@Controller
public class BackController {

    @Autowired
    BackService backService;

    /***
     * 查看订单
     * @return
     */
    @RequestMapping("/index")
    public String backIndex() {
        // 跳到后台主页
        return "pages/back/index";
    }

    /***
     * 跳到登陆页面
     * @return
     */
    @RequestMapping("/backLogin")
    public String backLogin() {
        // 跳到登陆页面
        return "pages/back/login";
    }

    /***
     * 跳到登陆页面
     * @return
     */
    @RequestMapping("/user")
    public String user() {
        // 跳到登陆页面
        return "pages/back/user";
    }


    /**
     * 后台登录接口
     * @param systemUser 实体类
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public Map selectAll(@RequestBody SystemUser systemUser, HttpServletRequest request) {
        // service层调用后台登陆接口
        boolean b = backService.backLogin(systemUser, request);
        HashMap map = new HashMap();
        map.put("flag", 1);
        if (!b){
            map.put("flag", 0);
            map.put("msg","账号或密码不正确");
            return map;
        }
        return map;
    }

    /**
     * 获取菜单权限
     * @return
     */
    @RequestMapping("home")
    @ResponseBody
    public List<MenuInfo> selectMenuInfo(Model model,HttpServletRequest request) {
        List<MenuInfo> menuList = backService.selectMenuInfo(request);
        model.addAttribute("menuList",menuList);
        return menuList;
    }

    /**
     * 修改后台用户信息
     * @return
     */
    @RequestMapping("updateSystemUser")
    @ResponseBody
    public Map updateSystemUser(SystemUser systemUser) {
        boolean b = true;
        if (systemUser.getId() != 0) {
            b = backService.updateSystemUser(systemUser);
        } else {
            b = backService.saveSystemUser(systemUser);
        }
        HashMap map = new HashMap();
        if (b){
            map.put("flag", 1);
            map.put("msg","修改成功");
            return map;
        }
        map.put("flag", 0);
        map.put("msg","修改失败");
        return map;
    }

    /**
     * 删除用户
     * @return
     */
    @RequestMapping("deleteUser")
    @ResponseBody
    public void deleteUser(Integer userId) {
        backService.deleteUser(userId);
    }

    /**
     * 查询所有用户信息
     * @return
     */
    @RequestMapping("selectSystemUserList")
    @ResponseBody
    public List<SystemUser> selectSystemUserList(Model model) {
        List<SystemUser> userList = backService.selectSystemUserList();
        for (SystemUser systemUser : userList) {
            if (systemUser.getRoleId() == 1) {
                systemUser.setRoleName("管理员");
            }
            if (systemUser.getRoleId() == 0) {
                systemUser.setRoleName("普通管理员");
            }
        }
        model.addAttribute("userList",userList);
        return userList;
    }

}
