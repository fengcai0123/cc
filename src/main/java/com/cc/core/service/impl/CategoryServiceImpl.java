package com.cc.core.service.impl;

import com.cc.core.common.BaseDao;
import com.cc.core.dao.CategoryDao;
import com.cc.core.entity.good.Category;
import com.cc.core.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryDao categoryDao;
    @Override
    public List<Category> find(String sql) {
        List<Category> categoryList=categoryDao.findCategory(sql);
        return categoryList;
    }

    @Override
    public Category findCategoryById(long id) {
        return (Category) categoryDao.findCategoryById(id);
    }

    @Override
    public List<Category> findCategoryListById(long id) {
        List<Category>categoryList=categoryDao.findCategoryById(id);
        return categoryList;
    }

    @Override
    public List<Category> findCategoryListByPropertyName( String cateName) {
        List<Category> categoryList=categoryDao.findByProperties(cateName);
        return categoryList;
    }
}
