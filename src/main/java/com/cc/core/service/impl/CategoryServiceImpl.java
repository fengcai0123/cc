package com.cc.core.service.impl;

import com.cc.core.common.BaseDao;
import com.cc.core.entity.good.Category;
import com.cc.core.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private BaseDao baseDao;
    @Override
    public List<Category> find(String sql) {
        List<Category> categoryList=baseDao.find(sql);
        return categoryList;
    }

    @Override
    public Category findCategoryById(int id) {
        return (Category) baseDao.get(Category.class,id);
    }
}
