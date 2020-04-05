package com.rich.controller;

import com.rich.pojo.OrderInfo;
import com.rich.pojo.Phone;
import com.rich.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：order〉
 *
 * @author zzy
 * @create 2020/3/14
 * @since 1.0.0
 */
@RequestMapping("/order")
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    /***
     * 查看订单
     * @return
     */
    @RequestMapping("/order")
    public String getAllOrder(Model model, String orderName) {
        // 所有的手机
        List<OrderInfo> list = orderService.selectAllOrder(orderName);
        model.addAttribute("all", list);
        // 跳到后台主页
        return "pages/back/orderInfo";
    }


    /***
     * 修改订单状态
     * @return
     */
    @RequestMapping("/updateOrder")
    public String updateOrder(Model model, int status, int id) {
        orderService.updateOrder(status, id);
        // 跳到后台主页
        return "redirect:order";
    }

    /***
     * 删除订单
     * @return
     */
    @RequestMapping("/deleteOrder")
    public String deleteOrder(Model model,int id) {
        orderService.deleteOrder(id);
        // 跳到后台主页
        return "redirect:order";
    }



}


















