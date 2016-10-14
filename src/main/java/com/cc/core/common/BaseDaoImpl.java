package com.cc.core.common;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/13.
 */
public  class BaseDaoImpl<T> implements BaseDao<T> {

    @Resource(name = "sessionFactory")
    private SessionFactory sessionFactory;

    private Class<T> entityClass; //获取实体类

    public BaseDaoImpl() {
        //得到泛型化超类(返回值为参数化类型)
        ParameterizedType type= (ParameterizedType)getClass().getGenericSuperclass();
        entityClass= (Class<T>) type.getActualTypeArguments()[0];
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }

   /* @Override
    public List<T> findAll(String  entityName) {
        String hql="from "+entityName;
        Query query= getCurrentSession().createQuery(hql);
        List<T> ls=query.list();
        return ls;
    }*/

    @Override
    public Serializable save(T o) {
        return this.getCurrentSession().save(o);
    }

    @Override
    public void delete(T o) {
        this.getCurrentSession().delete(o);
    }

    @Override
    public void update(T o) {
        this.getCurrentSession().update(o);
    }

    @Override
    public void saveOrUpdate(T o) {
        this.getCurrentSession().saveOrUpdate(o);
    }

    @Override
    public List<T> find(String hql) {

        return this.getCurrentSession().createQuery(hql).list();
    }

    @Override
    public List<T> find(String hql, Object[] param) {
        Query query=this.getCurrentSession().createQuery(hql);
        if(param != null && param.length > 0){
            for(int i=0;i<param.length;i++){
                query.setParameter(i,param[i]);
            }
        }
        return query.list();
    }

    @Override
    public List<T> find(String hql, List<Object> param) {
        Query query=this.getCurrentSession().createQuery(hql);
        if(param != null && param.size()>0){
            for(int i=0;i<param.size();i++){
                query.setParameter(i,param.get(i));
            }
        }
        return query.list();
    }

    @Override
    public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
        return null;
    }

    @Override
    public List<T> find(String hql, List<Object> param, Integer page, Integer rows) {
        return null;
    }

    @Override
    public T get(Class<T> c, Serializable id) {
        return (T) this.getCurrentSession().get(c,id);
    }

    @Override
    public T get(String hql, Object[] param) {
        return null;
    }

    @Override
    public T get(String hql, List<Object> param) {
        return null;
    }

    @Override
    public Long count(String hql) {
        return null;
    }

    @Override
    public Long count(String hql, Object[] param) {
        return null;
    }

    @Override
    public Long count(String hql, List<Object> param) {
        return null;
    }

    @Override
    public Integer executeHql(String hql) {
        return null;
    }

    @Override
    public Integer executeHql(String hql, Object[] param) {
        return null;
    }

    @Override
    public Integer executeHql(String hql, List<Object> param) {
        return null;
    }


 /*
    public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (rows == null || rows < 1) {
            rows = 10;
        }
        Query q = this.getCurrentSession().createQuery(hql);
        if (param != null && param.length > 0) {
            for (int i = 0; i < param.length; i++) {
                q.setParameter(i, param[i]);
            }
        }
        return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
    }

    public List<T> find(String hql, List<Object> param, Integer page, Integer rows) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (rows == null || rows < 1) {
            rows = 10;
        }
        Query q = this.getCurrentSession().createQuery(hql);
        if (param != null && param.size() > 0) {
            for (int i = 0; i < param.size(); i++) {
                q.setParameter(i, param.get(i));
            }
        }
        return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
    }

  public T get(Class<T> c, Serializable id) {
        return (T) this.getCurrentSession().get(c, id);
    }

    public T get(String hql, Object[] param) {
        List<T> l = this.find(hql, param);
        if (l != null && l.size() > 0) {
            return l.get(0);
        } else {
            return null;
        }
    }

    public T get(String hql, List<Object> param) {
        List<T> l = this.find(hql, param);
        if (l != null && l.size() > 0) {
            return l.get(0);
        } else {
            return null;
        }
    }

    public Long count(String hql) {
        return (Long) this.getCurrentSession().createQuery(hql).uniqueResult();
    }

    public Long count(String hql, Object[] param) {
        Query q = this.getCurrentSession().createQuery(hql);
        if (param != null && param.length > 0) {
            for (int i = 0; i < param.length; i++) {
                q.setParameter(i, param[i]);
            }
        }
        return (Long) q.uniqueResult();
    }

    public Long count(String hql, List<Object> param) {
        Query q = this.getCurrentSession().createQuery(hql);
        if (param != null && param.size() > 0) {
            for (int i = 0; i < param.size(); i++) {
                q.setParameter(i, param.get(i));
            }
        }
        return (Long) q.uniqueResult();
    }

    public Integer executeHql(String hql) {
        return this.getCurrentSession().createQuery(hql).executeUpdate();
    }

    public Integer executeHql(String hql, Object[] param) {
        Query q = this.getCurrentSession().createQuery(hql);
        if (param != null && param.length > 0) {
            for (int i = 0; i < param.length; i++) {
                q.setParameter(i, param[i]);
            }
        }
        return q.executeUpdate();
    }

    public Integer executeHql(String hql, List<Object> param) {
        Query q = this.getCurrentSession().createQuery(hql);
        if (param != null && param.size() > 0) {
            for (int i = 0; i < param.size(); i++) {
                q.setParameter(i, param.get(i));
            }
        }
        return q.executeUpdate();
    }
  */


   /* @Override
    public Pager findByPager(String sql, String  entityName,int startPage,int pageSize) {
        int pagerTotal=1;
        String hql="from "+entityName;
        Query query= HibernateUtils.getSessionFactory().getCurrentSession().createQuery(hql);
        List<Goods> goodsList=query.setFirstResult(startPage)
            .setMaxResults(pageSize)
            .list();
        int total=((Integer)query.list().get(0)).intValue();
        Pager pager=new Pager();
        pager.setRowTotal(total);
        pager.setList(goodsList);
        pager.setCurrentPage(startPage);
        pager.setCurrentRows(pageSize);

        //总记录数小于等于每页显示个数,只显示一页
        if(total<=pageSize){
            pagerTotal=1;
        }
        //总记录数大于每页显示个数
        if(total>pageSize){
            if (total % pageSize > 0) {
                pagerTotal = total / pageSize + 1;//不整除,则显示页: 商+1
            } else {
                pagerTotal = total / pageSize;//整除,则显示页: 商
            }
        }
        pager.setPageTotal(total/pageSize);
        return pager;
    }*/
}
