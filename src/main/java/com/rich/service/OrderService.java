package com.rich.service;

import com.rich.pojo.OrderInfo;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：service〉
 *
 * @author zzy
 * @create 2020/3/14
 * @since 1.0.0
 */
public interface OrderService {

    List<OrderInfo> selectAllOrder();

}
