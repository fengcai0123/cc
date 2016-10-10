package com.cc.core.dao;

import com.cc.core.entity.Goods;

import java.util.List;
import java.util.Map;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
public interface GoodsDao {

    List<Goods> findAll(String sql, Goods param);
    List<Goods> findByPager(String sql, Goods param);
}
