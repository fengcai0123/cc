package com.cc.core.service;

import com.cc.core.entity.good.Category;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
public interface CategoryService {
    List<Category> find(String sql);
    Category findCategoryById(int id);
}
