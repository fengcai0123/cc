package com.cc.core.service.impl;

import com.cc.core.dao.GoodsDao;
import com.cc.core.entity.good.Goods;
import com.cc.core.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
@Service
@Transactional
public class GoodsServiceImpl implements GoodsService{

    @Autowired
    private GoodsDao goodsDao;

    @Override
    public void add(Goods goods) {
         goodsDao.insert(goods);
    }

    @Override
    public void del(long id) {
        goodsDao.delete(id);
    }

    @Override
    public Goods findById(long id) {
        Goods goods=goodsDao.findById(id);
        return goods;

    }

    @Override
    public List<Goods> findListByCateId(long cateId) {
        List<Goods> goodsList=goodsDao.findListByCateId(cateId);
        return goodsList;

    }

    @Override
    public List<Goods> find(String hql) {
        return null;
    }

    @Override
    public List<Goods> findAll() {
        List<Goods> goodsList=goodsDao.findAll();
        return goodsList;
    }
}
