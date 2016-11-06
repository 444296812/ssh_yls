package com.zh.ssh.web;

import com.mysql.fabric.Response;
import com.zh.ssh.entity.ListEntity;
import com.zh.ssh.entity.Pagination;
import com.zh.ssh.service.BackstageService;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by DELL on 2016/11/4.
 */
@Controller
public class BackstageController {
    @Autowired
    private BackstageService backstageService;
    //后台分页功能
    @RequestMapping("/page")
    public String userpage(Integer pageNo, Integer pageSize,Integer pagego,Model model){
        //判段如果没有页码，每页几条记录，则给它们一个默认数据
        if (pageNo==null&&pagego==null){
            pageNo=1;
        }
        if (pagego!=null){
            pageNo=pagego;
        }
        if (pageSize==null){
            pageSize=7;
        }
        //pagination将得到BaseDao里传过来的列表数据和分页信息，同时将pageNo,pageSize传到backstageService（BaseDao）里面去
        Pagination pagination=backstageService.pageList(pageNo,pageSize);
        //将列表数据，分页信息封装到Pagination对象中，一起传递给model
        model.addAttribute("pagination",pagination);
        return "user_list";
    }

    //后台管理对用户订单进行删除操作
    @RequestMapping("deleteLists")
    public String deleteLists(@RequestBody  List<ListEntity> useID) {
        //得到jsp传过来的id(useID),然后根据id去数据库的list表删除相应数据
        for (ListEntity each:useID) {
            ListEntity listEntity=new ListEntity();
            listEntity.setUseID(each.getUseID());
            backstageService.deleteLists(listEntity);
        }
        return "";
    }

    //条件查询功能
    @RequestMapping("/search")
    public String search(int idname,String imvar,Model model){
        //将列表数据，分页信息封装到Pagination对象中，一起传递给model
        Pagination pagination=backstageService.search(idname,imvar);
        model.addAttribute("pagination",pagination);
        return "user_list";
    }
}
