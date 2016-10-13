package com.cc.core.service;

import com.cc.core.entity.good.Goods;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
public interface GoodsService {
    List<Goods> find(String hql);
}
