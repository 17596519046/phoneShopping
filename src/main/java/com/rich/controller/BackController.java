package com.rich.controller;

import com.rich.pojo.User;
import com.rich.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RequestMapping("/back")
@Controller
public class BackController {

    /**
     * 超级管理员 可以添加修改任意管理员信息； 可以修改删除会员信息，但是不能添加会员
     * 普通管理员 可以查看管理员信息；        可以查看会员信息；
     */


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
    @RequestMapping("/login")
    public String backLogin() {
        // 跳到登陆页面
        return "pages/back/login";
    }

    /**
     * 后台登录接口
     *
     * @return
     */
    @RequestMapping("/toLogin")
    @ResponseBody
    public Map selectAll(String username, String password, HttpServletRequest request) {
        // service层调用后台登陆接口
        boolean b = backService.tologin(username, password, request);
        HashMap map = new HashMap();
        map.put("success", b);
        return map;
    }

    /**
     * 修改后台用户信息
     *
     * @return
     */
    @RequestMapping("/updateUser")
    public String updateUser(User user) {
        // 如果用户id不为0 说明是修改 为0 或者为 null 是新增
        if (user.getId() != null && user.getId() != 0) {
            backService.updateSystemUser(user);
        } else {
            backService.saveSystemUser(user);
        }
        return "redirect:user";
    }

    /**
     * 删除用户
     *
     * @return
     */
    @RequestMapping("/deleteUser")
    public String deleteUser(Integer userId) {
        backService.deleteUser(userId);
        return "redirect:user";
    }

    /**
     * 查询管理员
     *
     * @return
     */
    @RequestMapping("/user")
    public String selectSystemUserList(Model model) {
        List<User> userList = backService.selectSystemUserList(1);
        model.addAttribute("all", userList);
        return "pages/back/user";
    }

    /**
     * 查询会员用户
     *
     * @return
     */
    @RequestMapping("/vip")
    public String vip(Model model) {
        List<User> userList = backService.selectSystemUserList(0);
        model.addAttribute("all", userList);
        return "pages/back/user";
    }

    /**
     * 通过id获取一个用户
     *
     * @return
     */
    @RequestMapping("/getOneUser")
    public String getOneUser(Model model, Integer userId) {
        User user = backService.getOneUser(userId);
        model.addAttribute("user", user);
        return "pages/back/user-update";
    }

}
