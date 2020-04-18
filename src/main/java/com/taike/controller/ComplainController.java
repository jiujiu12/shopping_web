package com.taike.controller;

import com.github.pagehelper.PageInfo;
import com.taike.domain.Complain;
import com.taike.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ComplainController {
    @Autowired
    private ComplainService complainService;
    @RequestMapping("user/complain")
    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1")
                                              Integer page, @RequestParam(name = "pageSize", required = true, defaultValue = "5") Integer
                                              pageSize) throws Exception{
        List<Complain> comList = complainService.findAll(page, pageSize);
        PageInfo pageInfo = new PageInfo(comList);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages-houtai/user-complain-management");
        mv.addObject("pageInfo", pageInfo);
        return mv;

    }
}
