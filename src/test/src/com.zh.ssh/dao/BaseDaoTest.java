package com.zh.ssh.dao;

import com.zh.ssh.entity.Pagination;
import org.junit.Test;

/**
 * Created by DELL on 2016/11/5.
 */
public class BaseDaoTest {
//    @Test
//    public void test(){
//        BaseDao baseDao=new BaseDao();
//        int c=baseDao.getTotalCount();
//        System.out.println(c);
//    }

    @Test
    public void test2(){
        BaseDao baseDao=new BaseDao();
        Pagination pageList=baseDao.pageList(0,5);
        System.out.println(pageList.getList().size());
    }
}
