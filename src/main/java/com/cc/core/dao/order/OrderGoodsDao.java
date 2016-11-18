package com.cc.core.dao.order;

import com.cc.core.entity.order.OrderGoods;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/19.
 */
public interface OrderGoodsDao {
    List<OrderGoods> selectByOrderIdAndUserId(long userId);

   void insertOrder(List<OrderGoods> orderGoodsList);
}
