package com.cc.core.service;

import com.cc.core.entity.good.Goods;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
public interface GoodsService {
    void add(Goods goods);

    void del(long id);

    Goods findById(long id);

    List<Goods> findListByCateId(long cateId);

    List<Goods> find(String hql);

    List<Goods> findAll();
}
