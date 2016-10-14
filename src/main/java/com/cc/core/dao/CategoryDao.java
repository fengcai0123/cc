package com.cc.core.dao;

import com.cc.core.entity.good.Category;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/14.
 */
public interface CategoryDao {
    Category findCategoryById(long id);

    List<Category> findCategoryListById(long sql);

    List<Category> findCategory(String sql);

    List<Category> findAll(String sql);

    List<Category> findByProperties(String propertyValue);
}
