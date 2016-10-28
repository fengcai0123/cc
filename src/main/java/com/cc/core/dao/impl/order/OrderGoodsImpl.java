package com.cc.core.dao.impl.order;

import com.cc.core.dao.order.OrderGoodsDao;
import com.cc.core.entity.order.OrderGoods;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/19.
 */
@Service
@Transactional
public class OrderGoodsImpl implements OrderGoodsDao {
    @Autowired
    private SessionFactory sessionFactory;

    public List<OrderGoods> selectByOrderIdAndUserId(long userId) {
        String hql="select oGoods from OrderGoods oGoods,OrderInfo oInfo where  oGoods.orderId=oInfo.id"+" and oInfo.userId="+userId ;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }
}
