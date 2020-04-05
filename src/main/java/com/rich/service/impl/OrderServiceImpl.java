package com.rich.service.impl;

import com.rich.mapper.OrderMapper;
import com.rich.pojo.OrderInfo;
import com.rich.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：impl〉
 *
 * @author zzys
 * @create 2020/3/14
 * @since 1.0.0
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<OrderInfo> selectAllOrder(String orderName) {
        List<OrderInfo> orderInfos = orderMapper.selectAllOrder(orderName);
        // 转换订单状态
        for (OrderInfo orderInfo : orderInfos) {
            switch (orderInfo.getOrderStatus()) {
                case 1:
                    orderInfo.setOrderStatusStr("已下单");
                    break;
                case 2:
                    orderInfo.setOrderStatusStr("取消订单");
                    break;
                case 3:
                    orderInfo.setOrderStatusStr("管理取消");
                    break;
                case 4:
                    orderInfo.setOrderStatusStr("已发货");
                    break;
                case 5:
                    orderInfo.setOrderStatusStr("已接收");
                    break;
                default:
                    orderInfo.setOrderStatusStr("派送中");
                    break;
            }
        }
        return orderInfos;
    }

    /**
     * 修改订单状态
     * @param status
     * @param id
     */
    @Override
    public void updateOrder(int status, int id) {
        orderMapper.updateOrder(status, id);
    }

    /**
     * 删除订单
     * @param id
     */
    @Override
    public void deleteOrder(int id) {
        orderMapper.deleteOrder(id);
    }
}
