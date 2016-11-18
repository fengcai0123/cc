package com.cc.core.dao.impl.order;

import com.cc.core.dao.order.OrderInfoDao;
import com.cc.core.entity.good.Goods;
import com.cc.core.entity.order.OrderInfo;
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
public class OrderInfoImpl implements OrderInfoDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<OrderInfoDao> selectByOrderId(long orderId) {
        return null;
    }

    @Override
    public OrderInfo selectById(long orderId) {
        String hql ="from OrderInfo o where o.id=:orderId";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("id",orderId);
        return (OrderInfo) query.uniqueResult();
    }

    @Override
    public void insertOrderInfo(OrderInfo orderInfo) {

    }

}
