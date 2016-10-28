package com.cc.core.dao.order;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/19.
 */
public interface OrderInfoDao {
    List<OrderInfoDao> selectByOrderId(long orderId);
}
