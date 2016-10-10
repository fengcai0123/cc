package com.cc.core.dao.impl;

import com.cc.core.common.HibernateUtils;
import com.cc.core.dao.GoodsDao;
import com.cc.core.entity.Goods;
import org.hibernate.query.Query;

import javax.persistence.GeneratedValue;
import java.util.List;
import java.util.Map;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
public class GoodsDaoImpl implements GoodsDao {
    @Override
    public List<Goods> findAll(String sql, Goods param) {
        String hql="from "+param;
        Query query= HibernateUtils.getSessionFactory().getCurrentSession().createQuery(hql);
        List<Goods> goodsList=query.list();
        return goodsList;
    }
    @Override
    public List<Goods> findByPager(String sql, Goods param) {
        String hql="from "+param;
        Query query= HibernateUtils.getSessionFactory().getCurrentSession().createQuery(hql);
        List<Goods> goodsList=query.list();
        return goodsList;
    }
}
