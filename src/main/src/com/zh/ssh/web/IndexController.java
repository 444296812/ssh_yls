package com.zh.ssh.web;


import com.zh.ssh.entity.ListEntity;
import com.zh.ssh.entity.OrdersEntiy;
import com.zh.ssh.entity.ShopEntity;
import com.zh.ssh.entity.Ylxs;
import com.zh.ssh.service.YlxsService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 佛祖保佑       永无BUG
 * Created by DELL on 2016/10/28.
 */
@Controller
public class IndexController {
    @Autowired
    private YlxsService ylxsService;

    //玉龙雪山首页
    @RequestMapping("/index")
    public String getIndex(Model model){
        //这里取到dao里面的首页数据集合
        List<Ylxs> ylxsList=ylxsService.find();
        //在将这些数据放在model里面
        model.addAttribute("dataFiles",ylxsList);
        return "index";
    }

    //购物车首页
    @RequestMapping("/spot")
    public String getSpot(Model model){
        //这里取到dao里面的首页数据集合
        List<ShopEntity> shopEntityList=ylxsService.findShop();

//        for (ShopEntity each:shopEntityList) {
//            System.out.println(each.getGoodsName());
//        }
        //在将这些数据放在model里面
        model.addAttribute("ordersList",shopEntityList);
        return "featureSpot";
    }

    //购物车增删改查页面
    @RequestMapping("/cart")
    public String crudCart(Model model){
        //这里取到dao里面的首页数据集合
        List<OrdersEntiy> ordersEntiys=ylxsService.findCart();
        //在将这些数据放在model里面
        model.addAttribute("ordersList",ordersEntiys);
        return "shoppingCart";
    }


    //订单核对结算页面
    @RequestMapping("/order")
    public String orders(Model model){
        //这里取到dao里面的首页数据集合
        List<ListEntity> listEntities=ylxsService.findList();
        //在将这些数据放在model里面
        model.addAttribute("ordersList",listEntities);
        return "shoppingCartOrders";
    }

}