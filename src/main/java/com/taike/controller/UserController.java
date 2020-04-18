package com.taike.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.taike.domain.User;
import com.taike.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class UserController {
    @Autowired   //按类型注入
    private UserService userService;
    @RequestMapping("/user/findAll")
    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1")
                                      Integer page, @RequestParam(name = "pageSize", required = true, defaultValue = "5") Integer
                                      pageSize) throws Exception{
        List<User> usersList = userService.findAll(page, pageSize);
        PageInfo pageInfo = new PageInfo(usersList);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages-houtai/user-management");
        mv.addObject("pageInfo", pageInfo);
        return mv;
        //在视图解析器中配置了前缀后缀
    }
    @RequestMapping("/user/findById")
    public ModelAndView findById(@RequestParam(name = "id", required = true)int id) throws Exception{
        ModelAndView mv=new ModelAndView();
        User userList=userService.findById(id);
        mv.setViewName("pages-houtai/user-detail");
        mv.addObject("userList",userList);
        return mv;
    }
    @RequestMapping("/user/findByUserName")
    public ModelAndView findByUserName() throws Exception{
        ModelAndView mv=new ModelAndView();
        User userList=userService.findByUserName();
        mv.setViewName("pages/udai_setting");
        mv.addObject("userList",userList);
        return mv;
    }
    @RequestMapping("/user/findByIdAndStatus")
    public ModelAndView findByIdAndStatus(@RequestParam(name = "id", required = true)int id) throws Exception{
        ModelAndView mv=new ModelAndView();
        User userList=userService.findById(id);
        mv.setViewName("pages-houtai/user-detail");
        mv.addObject("userList",userList);
        return mv;
    }
    @RequestMapping("/user/saveStatusNormal")
    public String saveStatusNormal(@RequestParam(name = "id", required = true)int id) throws Exception{
        userService.saveStatusNormal(id);
        return "redirect:complain";
    }
    @RequestMapping("/user/saveStatusAbnormal")
    public String saveStatusAbnormal(@RequestParam(name = "id", required = true)int id) throws Exception{
        userService.saveStatusAbnormal(id);
        return "redirect:complain";
    }
    @RequestMapping("/user/saveByUserName")
    public String saveByUserName(HttpServletRequest request,HttpServletResponse response) throws Exception{
        String user_address=request.getParameter("user_address");
        String phone=request.getParameter("phone");
        userService.saveByUserName(phone,user_address);
        return "redirect:findByUserName";
    }
    @RequestMapping("/user/findByIf")
    public ModelAndView findByIf(
            @RequestParam(name = "page", required = true, defaultValue = "1")
                    Integer page, @RequestParam(name = "pageSize", required = true, defaultValue = "5") Integer
                    pageSize,
            HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv=new ModelAndView();
        String username=request.getParameter("username");
        String real_name=request.getParameter("real_name");
        String user_address=request.getParameter("user_address");
        String phone=request.getParameter("phone");
        String sTime=request.getParameter("start_time");
        String eTime=request.getParameter("login_time");
        String start_time="";
        String login_time="";
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
                    login_time+=eTime.charAt(i);
                }else {
                    login_time+="-";
                }
            }
            login_time=login_time.substring(0,login_time.length()-1);
        }
        System.out.println(login_time);
        List<User> usersList = userService.findByIf(page,pageSize,
                username,
                real_name,
                user_address,
                phone,
                start_time,
                login_time
                );
        PageInfo pageInfo = new PageInfo(usersList);
        mv.setViewName("pages-houtai/user-management");
        mv.addObject("pageInfo", pageInfo);
        System.out.println("hello,service");
        return mv;
    }
    @RequestMapping("/user/groupBuy")
    public ModelAndView showGroupDetail(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("pages/group_buy");
        return mv;
    }

}
