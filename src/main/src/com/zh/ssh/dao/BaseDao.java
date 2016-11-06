package com.zh.ssh.dao;
import com.zh.ssh.entity.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2016/10/27.
 */

public class BaseDao<M> {
    @Autowired
    private SessionFactory sessionFactory;
    //ylxs首页的所有数据
    public List<Ylxs> find() {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query=session.createQuery("from Ylxs y left join fetch y.columnEntity ");
        //然后将取出的数据存放到list集合
        List<Ylxs> ylxsList=query.list();
        session.getTransaction().commit();
        return ylxsList;
    }
    public List<ColumnEntity> findColumn() {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query=session.createQuery("from ColumnEntity");
        //然后将取出的数据存放到list集合
        List<ColumnEntity> columnEntityList=query.list();
        session.getTransaction().commit();
        return columnEntityList;
    }

    //商品产品的界面
    public List<ShopEntity> findShop() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query = session.createQuery("from ShopEntity");
        //然后将取出的数据存放到list集合
        List<ShopEntity> shopEntityList = query.list();
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
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query = session.createQuery("from OrdersEntiy");
        //然后将取出的数据存放到list集合
        List<OrdersEntiy> ordersEntiys = query.list();
        session.getTransaction().commit();
        return ordersEntiys;
    }


    //购物车点击加
    public void updateAdd(M m) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(m);
        session.getTransaction().commit();
    }

    //购物车点击减
    public void updateReduce(M m) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(m);
        session.getTransaction().commit();
    }


    //购物车点击删除操作的时候在orders表中执行相应的删除功能
    public void deleteOrders(M m) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.remove(m);
        session.getTransaction().commit();
    }


    //订单核算的界面
    public List<ListEntity> findList() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //利用hql查询出ylxs首页的所有数据
        Query query = session.createQuery("from OrdersEntiy");
        //然后将取出的数据存放到list集合
        List<ListEntity> listEntities = query.list();
        session.getTransaction().commit();
        return listEntities;
    }

    //订单核对结算页面,点击提交订单，提交成功，将用户的票务信息保存到数据库list表
    //同时后台也要取到list表里面的数据进行管理
    public void settlementOrder(ListEntity tlementOrder) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(tlementOrder);
        session.getTransaction().commit();
    }

     //后台管理数据删除功能
    public void deleteLists(ListEntity listEntity) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.remove(listEntity);
        session.getTransaction().commit();
    }


    //分页
       //根据第一个页码和每页数量，取到记录，然后封装到Pagination实体
    public Pagination pageList(Integer pageNo, Integer pageSize) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        //得到 private int getTotalCount()里面返回的所有记录条数
        int totalCount=getTotalCount();
        //传了第一个页码，每页几条记录和总共多少条记录到Pagination实体resultList里面
        Pagination resultList=new Pagination(pageNo,pageSize,totalCount);
                //查询pagination中的list(根据hql的分页查询)
               Query query=session.createQuery("from ListEntity");
                //设置第一个页码
               query.setFirstResult(resultList.getFirstResult());
                //设置每页数量
               query.setMaxResults(resultList.getPageSize());
               List<ListEntity> listEntities=query.list();
            //将从数据库取到的记录listEntities，封装到Pagination的list
            resultList.setList(listEntities);
            System.out.println("数据库取到的记录"+listEntities.size());
            session.getTransaction().commit();
        return resultList;
    }

    //得到在数据库里面一共有多少条user记录
      private int getTotalCount() {
          Session session = sessionFactory.openSession();
          Long result= (Long) session.createQuery("select count(le.useID) from ListEntity le").getSingleResult();
          System.out.println("受影响行数："+result);
          //将Long 的result转换为int
          return result.intValue();
    }


    //条件查询
    public Pagination search(int idname, String imvar) {
        Session session = sessionFactory.openSession();
        Pagination resultList = new Pagination();
        //查询pagination中的list
        List<ListEntity> listEntities = new ArrayList<ListEntity>();
            if (idname==1) {
                Query query = session.createQuery("from ListEntity le where le.useID=:userId");
                 //因为数据库需要的是int ,imvar为String，需要强制转换
                query.setParameter("userId",Integer.valueOf(imvar));
                listEntities = query.list();
                resultList.setList(listEntities);
            } else if (idname==2){
                Query query = session.createQuery("from ListEntity le where le.orderNum=:orderNum");
                query.setParameter("orderNum",imvar);
                listEntities = query.list();
                resultList.setList(listEntities);
            } else{
                Query query = session.createQuery("from ListEntity le where le.usePapers=:usePapers");
                query.setParameter("usePapers",imvar);
                listEntities = query.list();
                resultList.setList(listEntities);
            }
            return resultList;
    }

}
