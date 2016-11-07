package com.cc.core.service;

import com.cc.core.entity.order.OrderGoods;
import com.cc.core.entity.order.OrderInfo;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/21.
 */
public interface OrderInfoService {

    List<OrderGoods> findAllOrderGoodsList(long userId);
     OrderInfo findByOrderId(long userId);
}
