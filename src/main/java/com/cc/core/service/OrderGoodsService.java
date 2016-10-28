package com.cc.core.service;

import com.cc.core.dao.order.OrderGoodsDao;
import com.cc.core.entity.order.OrderGoods;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/21.
 */
public interface OrderGoodsService {

    List<OrderGoods> findAllOrderGoodsList(long userId);
}
