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
public class CategoryDaoImpl  implements CategoryDao {

    @Autowired
     private SessionFactory sessionFactory;


    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }


    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void save(Category category) {
        sessionFactory.getCurrentSession().save(category);
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
        return  query.list();

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
        return query.list();
    }

}
