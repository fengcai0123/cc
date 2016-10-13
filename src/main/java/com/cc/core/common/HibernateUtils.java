package com.cc.core.common;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.springframework.test.context.ContextConfiguration;

/**
 * Created by yonghuo.chen on 16/10/10.
 */
public class HibernateUtils {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        return  new Configuration().configure().buildSessionFactory();
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public static void shutdown(){
        getSessionFactory().close();
    }

   /* private static SessionFactory sessionFactory;

    private HibernateUtils() {
    }

    static {
        try {
*//** 此方法在Hibernate4中被标记为过时 *//*
// sessionFactory = new
// Configuration().configure().buildSessionFactory();
*//** Hibernate4取得SessionFactory的方法 *//*
            Configuration config = new Configuration().configure();

// 在Hibernate4.3.6版本中，ServiceRegistryBuilder被标记为已过时
//ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(cfg.getProperties()).buildServiceRegistry();//不推荐
            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                .applySettings(config.getProperties()).build();//推荐
            sessionFactory = config.buildSessionFactory(serviceRegistry);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }*/
}
