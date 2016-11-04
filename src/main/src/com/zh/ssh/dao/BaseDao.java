package com.zh.ssh.dao;
import com.zh.ssh.entity.ListEntity;
import com.zh.ssh.entity.OrdersEntiy;
import com.zh.ssh.entity.ShopEntity;
import com.zh.ssh.entity.Ylxs;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2016/10/27.
 */

public class BaseDao<M> {
    @Autowired
    private SessionFactory sessionFactory ;
    //ylxs首页的所有数据
    public List<Ylxs> find() {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query=session.createQuery("from Ylxs");
        //然后将取出的数据存放到list集合
        List<Ylxs> ylxsList=query.list();
        session.getTransaction().commit();
        return ylxsList;
    }

    //商品产品的界面
    public List<ShopEntity> findShop() {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query=session.createQuery("from ShopEntity");
        //然后将取出的数据存放到list集合
        List<ShopEntity> shopEntityList=query.list();
        session.getTransaction().commit();
        return shopEntityList;
    }


    //点击加入购物车，商品加入购物车表
    public void addCart(M m) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(m);
        session.getTransaction().commit();
    }

    //购物车的界面
    public List<OrdersEntiy> findCart() {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query=session.createQuery("from OrdersEntiy");
        //然后将取出的数据存放到list集合
        List<OrdersEntiy> ordersEntiys=query.list();
        session.getTransaction().commit();
        return ordersEntiys;
    }


      //购物车点击加
        public void updateAdd(M m) {
            Session session=sessionFactory.openSession();
            session.beginTransaction();
            session.update(m);
            session.getTransaction().commit();
    }

     //购物车点击减
     public void updateReduce(M m) {
         Session session=sessionFactory.openSession();
         session.beginTransaction();
         session.update(m);
         session.getTransaction().commit();
     }


    //购物车点击删除操作的时候在orders表中执行相应的删除功能
    public void deleteOrders(M m) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        session.remove(m);
        session.getTransaction().commit();
    }


    //订单核算的界面
    public List<ListEntity> findList() {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query=session.createQuery("from OrdersEntiy");
        //然后将取出的数据存放到list集合
        List<ListEntity> listEntities=query.list();
        session.getTransaction().commit();
        return listEntities;
    }


}
