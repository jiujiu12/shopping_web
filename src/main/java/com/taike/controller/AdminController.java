package com.taike.controller;

import com.taike.domain.Admin;
import com.taike.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class AdminController {

    @Autowired   //按类型注入
    private AdminService adminService;

    @RequestMapping("/admin/findAll")
    public String findAll(Model model){
        System.out.println("Controller表现层：查询所有账户...");
        List<Admin> list=adminService.findAll();
        model.addAttribute("list",list);
        return "pages/list";
        //在视图解析器中配置了前缀后缀
    }

    @RequestMapping("/admin/save")
    public void saveAdmin(Admin admin, HttpServletRequest request, HttpServletResponse response) throws IOException {
        adminService.saveAdmin(admin);
        response.sendRedirect(request.getContextPath()+"/admin/findAll");
        return;
    }

}
