package com.cc.core.dao.impl;

import com.cc.core.common.BaseDao;
import com.cc.core.common.BaseDaoImpl;
import com.cc.core.dao.CategoryDao;
import com.cc.core.entity.good.Category;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/14.
 */
@Repository(value = "categoryDao")
public class CategoryDaoImpl extends BaseDaoImpl<Category> implements CategoryDao {

    @Autowired
     private SessionFactory sessionFactory;

    @Override
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Override
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Category findCategoryById(long id) {
        String sql="from Category c where c.id=:cid";
        Query query=sessionFactory.getCurrentSession().createQuery(sql);

        return null;
    }

    @Override
    public List<Category> findCategory(String sql) {
        return null;
    }

    @Override
    public List<Category> findCategoryListById(long sql) {
        String hql="from Category c where c.id=:cid";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("cid",sql);
        List<Category>categoryList=query.list();
        return categoryList;
    }

    @Override
    public List<Category> findAll(String entityName) {
        String hql="from "+entityName;
         Query query= sessionFactory.getCurrentSession().createQuery(hql);
        List<Category> categoryList=query.list();
       for(int i=0;i<categoryList.size();i++) {
           Category category=categoryList.get(i);
           System.out.println("categoryDaoImpl:" +category.getName()+"  id="+category.getId());
       }
        return categoryList;
    }

    @Override
    public List<Category> findByProperties(String propertyValue) {
        String hql="from Category c where  c.name=:propertyName";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("propertyName",propertyValue);
        List<Category> categoryList=query.list();
        return categoryList;
    }
}
