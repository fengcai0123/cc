package com.cc.core.dao;


import net.shangtech.framework.dao.Pagination;
import net.shangtech.framework.util.MapHolder;
import sun.misc.Sort;

import java.util.List;
import java.util.Map;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
public interface IBaseDao<T> {
    Class<T> getEntityClass();
    void setEntityClass(Class<T> entityClass);

    void save(T entity);

    void delete(T entity);

    T find(Long var1);

    List<T> findAll(Sort... var1);

    void findAll(Pagination<T> var1, Sort... var2);

    T findOneByProperty(String var1, Object var2  );

    T findOneByProperties(MapHolder<String> var1);

    List<T> findByPager(String sql, Map<String,Object> param);

    void findByProperty(Pagination<T> var1,String var2, Object var3, Sort... var4);

    void findByProperties(Pagination<T> var1, MapHolder<String> var2, Sort... var3);

    List<T> findByProperties(MapHolder<String> var1,Sort... var2);
}
