package com.cc.core.dao.impl;

import com.cc.core.common.BaseDaoImpl;
import com.cc.core.common.HibernateUtils;
import com.cc.core.common.Pager;
import com.cc.core.dao.GoodsDao;
import com.cc.core.entity.good.Goods;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
@Repository("goodsDao")
public class GoodsDaoImplImpl  implements GoodsDao {
    @Override
    public List<Goods> findAll( String  entityName) {
      /*  String hql="from "+entityName;
        Query query= HibernateUtils.getSessionFactory().getCurrentSession().createQuery(hql);
        List<Goods> goodsList=query.list();
        return goodsList;*/
        return  null;
    }
public  List<Goods> find(String hql){

    return null;
}
    @Override
    public Pager  findByPager(String sql, String  entityName,int startPage,int pageSize) {
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
    }
}
