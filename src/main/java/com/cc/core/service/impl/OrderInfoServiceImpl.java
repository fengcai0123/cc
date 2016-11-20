package com.cc.core.service.impl;

import com.cc.core.dao.order.OrderGoodsDao;
import com.cc.core.dao.order.OrderInfoDao;
import com.cc.core.entity.order.OrderGoods;
import com.cc.core.entity.order.OrderInfo;
import com.cc.core.service.OrderGoodsService;
import com.cc.core.service.OrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/21.
 */
@Service
@Transactional
public class OrderInfoServiceImpl implements OrderInfoService {

    @Autowired
    private OrderInfoDao orderInfoDao;


    @Override
    public List<OrderGoods> findAllOrderGoodsList(long userId) {
        return null;
    }

    @Override
    public OrderInfo findByOrderId(long userId) {
        return null;
    }

    @Override
    public void addOrderInfo(OrderInfo orderInfo) {
        orderInfoDao.insertOrderInfo(orderInfo);
    }
}
