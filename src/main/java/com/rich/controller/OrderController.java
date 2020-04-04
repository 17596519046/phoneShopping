package com.rich.controller;

import com.rich.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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


}


















