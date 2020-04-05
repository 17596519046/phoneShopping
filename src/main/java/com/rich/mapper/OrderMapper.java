package com.rich.mapper;

import com.rich.pojo.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：mapper〉
 *
 * @author zzy
 * @create 2020/3/14
 * @since 1.0.0
 */
public interface OrderMapper {

    List<OrderInfo> selectAllOrder(String orderName);

    void updateOrder(@Param("status") int status, @Param("id") int id);

    void deleteOrder(int id);
}
