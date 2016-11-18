package com.cc.core.dao.order;

import com.cc.core.entity.order.OrderGoods;
import com.cc.core.entity.order.OrderInfo;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/19.
 */
public interface OrderInfoDao {
    List<OrderInfoDao> selectByOrderId(long orderId);
     OrderInfo selectById(long orderId);

    void insertOrderInfo(OrderInfo orderInfo);
}
