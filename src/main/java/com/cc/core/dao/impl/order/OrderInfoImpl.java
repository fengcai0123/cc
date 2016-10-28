package com.cc.core.dao.impl.order;

import com.cc.core.dao.order.OrderInfoDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/19.
 */
@Service
@Transactional
public class OrderInfoImpl implements OrderInfoDao {
    @Override
    public List<OrderInfoDao> selectByOrderId(long orderId) {
        return null;
    }
}
