package com.cc.core.dao.impl;

import com.cc.core.common.BaseDaoImpl;
import com.cc.core.common.HibernateUtils;
import com.cc.core.common.Pager;
import com.cc.core.dao.GoodsDao;
import com.cc.core.entity.good.Goods;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
@Repository("goodsDao")
public class GoodsDaoImplImpl  implements GoodsDao {

    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void insert(Goods goods) {
       /* String hql="insert into Goods (categoryId,name,number,weight,marketPrice,shopPrice," +
            "isOnSale,detailNumber,mainNumber)" +
            "values(categoryId,name,number,weight,marketPrice,shopPrice,\" +\n" +
            "            \"isOnSale,detailNumber,mainNumber)";*/
         sessionFactory.getCurrentSession().save(goods);

    }

    @Override
    public void delete(long id) {
        String hql="delete from Goods g where g.id="+id;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        query.executeUpdate();
    }

    @Override
    public List<Goods> findAll() {
        String hql="from Goods g where g.categoryId>2";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }

    @Override
    public Goods findById(long id) {
        String hql ="from Goods g where g.id=:gid";
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("gid",id);
        return (Goods) query.uniqueResult();
    }

    @Override
    public List<Goods> findListByCateId(long cateId) {
        String hql="from Goods g where g.categoryId=:cid";
        Query query =sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("cid",cateId);
        return query.list();
    }

    @Override
    public Pager  findByPager(String sql, String  entityName,int startPage,int pageSize) {
        int pagerTotal=1;
        String hql="from "+entityName;
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
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
    }
}
