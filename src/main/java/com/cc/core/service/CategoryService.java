package com.cc.core.service;

import com.cc.core.entity.good.Category;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
public interface CategoryService {

    void save(Category category);

    List<Category> find(String sql);
    Category findCategoryById(long sql);
    List<Category>  findCategoryListById(long id);

    List<Category> findCategoryListByPropertyName(String cateName);
}
