package com.zh.ssh.web;


import com.zh.ssh.entity.*;
import com.zh.ssh.service.CartService;
import com.zh.ssh.service.YlxsService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.UUID;

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
        List<ColumnEntity> columnEntityList=ylxsService.findColumn();
        //在将这些数据放在model里面
        model.addAttribute("dataFiles",ylxsList);
        model.addAttribute("column",columnEntityList);
        return "index";
    }

    //购物车首页
    @RequestMapping("/spot")
    public String getSpot(Model model){
        //这里取到dao里面的首页数据集合
        List<ShopEntity> shopEntityList=ylxsService.findShop();
        //在将这些数据放在model里面
        model.addAttribute("ordersList",shopEntityList);
        return "featureSpot";
    }


    //点击加入购物车，商品加入购物车表
    @Autowired
    private CartService cartService;
    @RequestMapping("/addCart")
    public String addCart(int goods_id){
        System.out.println("@RequestMapping:"+goods_id);
        List<ShopEntity> shopEntityList=ylxsService.findShop();
        for (ShopEntity each:shopEntityList) {
            //如果jsp里面的id和GoodsID相等，则将ShopEntity里面的相应数据加入到OrdersEntiy
            if(goods_id==each.getGoodsID()){
                OrdersEntiy ordersEntiy=new OrdersEntiy();
                ordersEntiy.setTicketId(each.getGoodsID());
                ordersEntiy.setTicketName(each.getGoodsName());
                ordersEntiy.setTicketPrice(each.getGoodsPrice());
                ordersEntiy.setTicketNum(1);
                ordersEntiy.setTicketTotal(each.getGoodsPrice());
                cartService.addCart(ordersEntiy);

            }
        }
        return "";
    }

   //购物车点击删除操作的时候在orders表中执行相应的删除功能
   @RequestMapping("/deleteOrders")
   public String deleteOrders(int goods_id) {
      // System.out.println("商品的id："+goods_id);
       OrdersEntiy ordersEntiy=new OrdersEntiy();
       ordersEntiy.setTicketId(goods_id);
       cartService.deleteOrders(ordersEntiy);
       return "";
   }


    //购物车点击删除操作的时候在orders表中执行相应的“加”功能(从jsp接收一个id)
    @RequestMapping("/updateAdd")
    public String updateAdd(int add_id) {
        System.out.println("家家："+add_id);
        int num=0;

        //先取到orders购物车里面的num
        List<OrdersEntiy> ordersEntiys=ylxsService.findCart();
        for (OrdersEntiy each:ordersEntiys) {
            if (add_id==each.getTicketId()){
                OrdersEntiy ordersEntiy=new OrdersEntiy();
                num=each.getTicketNum()+1;
                ordersEntiy.setTicketId(add_id);
                ordersEntiy.setTicketName(each.getTicketName());
                ordersEntiy.setTicketNum(num);
                ordersEntiy.setTicketPrice(each.getTicketPrice());
                ordersEntiy.setTicketTotal(each.getTicketPrice()*num);
                cartService.updateAdd(ordersEntiy);
            }

        }
        return "";
    }

    //购物车点击删除操作的时候在orders表中执行相应的“减”功能
    @RequestMapping("/updateReduce")
    public String updateReduce(int reduce_id) {
        int num=0;
        //先取到orders购物车里面的num
        List<OrdersEntiy> ordersEntiys=ylxsService.findCart();
        for (OrdersEntiy each:ordersEntiys) {
            if (reduce_id==each.getTicketId()&&each.getTicketNum()>1){
                OrdersEntiy ordersEntiy=new OrdersEntiy();
                num=each.getTicketNum()-1;
                ordersEntiy.setTicketId(reduce_id);
                ordersEntiy.setTicketName(each.getTicketName());
                ordersEntiy.setTicketNum(num);
                ordersEntiy.setTicketPrice(each.getTicketPrice());
                ordersEntiy.setTicketTotal(each.getTicketPrice()*num);
                cartService.updateAdd(ordersEntiy);
            }
        }
        return "";
    }


    //购物车增删改查页面---取数据
    @RequestMapping("/cart")
    public String crudCart(Model model){
        //这里取到dao里面的首页数据集合
        List<OrdersEntiy> ordersEntiys=ylxsService.findCart();

        double total=0;
//     取到每个商品的总价格相加
        for (OrdersEntiy each:ordersEntiys) {
            total+=each.getTicketTotal();

        }
        //将总价传到jsp
        model.addAttribute("total",total);
        //在将这些数据放在model里面
        model.addAttribute("ordersList",ordersEntiys);
        return "shoppingCart";
    }


    //订单核对结算页面
    @RequestMapping("/order")
    public String orders(Model model){
        //这里取到dao里面的首页数据集合

        List<OrdersEntiy> ordersEntiys=ylxsService.findCart();
        double total=0;
//     取到每个商品的总价格相加
        for (OrdersEntiy each:ordersEntiys) {
            total+=each.getTicketTotal();

        }
        //将总价传到jsp
        model.addAttribute("total",total);

        List<ListEntity> listEntities=ylxsService.findList();
        //在将这些数据放在model里面
        model.addAttribute("ordersList",listEntities);
        return "shoppingCartOrders";
    }

    //订单核对结算页面,点击提交订单，提交成功，将用户的票务信息保存到数据库
    @RequestMapping("/settlementOrder")
    public String settlementOrder(Model model,String userName,String zhenJian,String phone){
        ListEntity listEntity=new ListEntity();
        List<OrdersEntiy> ordersEntiys=ylxsService.findCart();
        //随机生成一个唯一的订单号,然后给用户
        UUID uuid = UUID.randomUUID();
        String orderNum="yls"+uuid;
        model.addAttribute("orderNum",orderNum);
        for (OrdersEntiy each:ordersEntiys) {
                listEntity.setUseName(userName);
                listEntity.setUsePapers(zhenJian);
                listEntity.setUsePhone(phone);
                //如果id和jsp传过来的id相等，则见id相关的数据直接从购物车表传到list表即可，就不在jsp在传过来了(没实现)
                listEntity.setUseID(each.getTicketId());
                listEntity.setTicketName(each.getTicketName());
                listEntity.setTicketPrice(each.getTicketPrice());
                listEntity.setTicketNum(each.getTicketNum());
                listEntity.setTicketTotal(each.getTicketTotal());
                listEntity.setOrderNum(orderNum);
                cartService.settlementOrder(listEntity);
            }
        return "cs";
    }

}