package com.taike.controller;

import com.github.pagehelper.PageInfo;
import com.taike.domain.OrderDetail;
import com.taike.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class OrderDetailController {
    @Autowired   //按类型注入
    private OrderDetailService orderDetailService;

    @RequestMapping("/order/findByOrderId")
    public ModelAndView findByOrderId(@RequestParam(name = "id", required = true)int id,
                                      @RequestParam(name = "page", required = true, defaultValue = "1")
                                        Integer page, @RequestParam(name = "pageSize", required = true, defaultValue = "5") Integer
                                        pageSize) throws Exception{
        List<OrderDetail> orderDetailsList = orderDetailService.findByOrderId(id,page, pageSize);
        PageInfo pageInfo = new PageInfo(orderDetailsList);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages-houtai/order-user-detail");
        mv.addObject("pageInfo", pageInfo);
        return mv;
        //在视图解析器中配置了前缀后缀
    }
}
