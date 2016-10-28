package com.cc.core.service.impl;

import com.cc.core.dao.order.OrderGoodsDao;
import com.cc.core.entity.order.OrderGoods;
import com.cc.core.service.OrderGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/21.
 */
@Service
public class OrderGoodsServiceImpl implements OrderGoodsService {

    @Autowired
    private OrderGoodsDao orderGoodsDao;

    @Override
    public List<OrderGoods> findAllOrderGoodsList(long userId) {
        return orderGoodsDao.selectByOrderIdAndUserId(userId);
    }
}
