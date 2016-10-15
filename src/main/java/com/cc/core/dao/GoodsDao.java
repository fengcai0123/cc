package com.cc.core.dao;

import com.cc.core.common.Pager;
import com.cc.core.entity.good.Goods;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
public interface GoodsDao {

    void insert(Goods goods);

    void delete(long id);

    Goods findById(long id);

    List<Goods> findListByCateId(long cateId);
    Pager findByPager(String sql ,String entityName, int startPage, int pageSize);
    List<Goods> findAll();

}
