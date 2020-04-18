package com.taike.controller;

import com.github.pagehelper.PageInfo;
import com.taike.domain.Order;
import com.taike.domain.User;
import com.taike.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("order/findAll")
    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1")
                                            Integer page, @RequestParam(name = "pageSize", required = true, defaultValue = "5") Integer
                                            pageSize) throws Exception{
        System.out.println("Controller表现层：查询所有账户...");
        List<Order> orderList=orderService.findAll(page, pageSize);
        PageInfo pageInfo = new PageInfo(orderList);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages-houtai/order-management");
        mv.addObject("pageInfo", pageInfo);
        return mv;
    }
    @RequestMapping("/order/findById")
    public ModelAndView findById(@RequestParam(name = "id", required = true)int id) throws Exception{
        ModelAndView mv=new ModelAndView();
        Order orderList=orderService.findById(id);
        mv.setViewName("pages-houtai/order-detail");
        mv.addObject("orderList",orderList);
        return mv;
    }
    @RequestMapping("/order/findByIf")
    public ModelAndView findByIf(
            @RequestParam(name = "page", required = true, defaultValue = "1")
                    Integer page, @RequestParam(name = "pageSize", required = true, defaultValue = "5") Integer
                    pageSize,
            HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv=new ModelAndView();
        String order_no=request.getParameter("order_no");
        String headman_id=request.getParameter("headman_id");
        String sTime=request.getParameter("start_time");
        String eTime=request.getParameter("end_time");
        String start_time="";
        String end_time="";
        if(sTime != null && !"".equals(sTime)){
            for(int i=0;i<sTime.length();i++){
                if(sTime.charAt(i)>=48 && sTime.charAt(i)<=57){
                    start_time+=sTime.charAt(i);
                }else {
                    start_time+="-";
                }
            }
            start_time=start_time.substring(0,start_time.length()-1);
        }
        if(eTime != null && !"".equals(eTime)){
            for(int i=0;i<eTime.length();i++){
                if(eTime.charAt(i)>=48 && eTime.charAt(i)<=57){
                    end_time+=eTime.charAt(i);
                }else {
                    end_time+="-";
                }
            }
            end_time=end_time.substring(0,end_time.length()-1);
        }
        System.out.println(end_time);
        List<Order> ordersList = orderService.findByIf(page,pageSize,
                order_no,
                headman_id,
                start_time,
                end_time
        );
        PageInfo pageInfo = new PageInfo(ordersList);
        mv.setViewName("pages-houtai/order-management");
        mv.addObject("pageInfo", pageInfo);
        System.out.println("hello,service");
        return mv;
    }
    @RequestMapping("/user/saveNew")
    public String saveNew(HttpServletRequest request, HttpServletResponse response){
        String id=request.getParameter("id");
        String start_time=request.getParameter("start_time");
        String end_time=request.getParameter("end_time");
        String order_price=request.getParameter("order_price");
        String order_status=request.getParameter("order_status");
        String headman_id=request.getParameter("headman_id");
        String goods_id=request.getParameter("goods_id");

        orderService.saveNew(id,start_time,end_time,order_price,order_status,headman_id,goods_id);
        return "redirect:groupBuy";
    }
}
