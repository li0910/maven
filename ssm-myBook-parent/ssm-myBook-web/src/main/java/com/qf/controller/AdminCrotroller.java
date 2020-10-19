package com.qf.controller;

import com.qf.pojo.Admin;
import com.qf.service.AdminService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.rmi.MarshalledObject;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminCrotroller {

    @Autowired
    private AdminService adminService;

    //    管理员注册方法,默认只要三个人成为管理员,超过三个人,不让注册
    @SneakyThrows
    @RequestMapping("/addAdmin")
    public ModelAndView addAdmin(Admin admin, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();

        List<Admin> allAdmin = adminService.findAllAdmin();

        if (allAdmin.size() > 3) {

            response.setCharacterEncoding("GBK");
            PrintWriter out = response.getWriter();
            out.println("<script language='javascript'>alert('管理员人数达到上限,不能再被注册！')</script>");
            out.println("<script language='javascript'>window.location.href='/html/login-reg/login.html'</script>");
        } else {
            adminService.addAdmin(admin);
            modelAndView.setViewName("/html/login-reg/login.html");
        }
        return modelAndView;
    }

//    管理员登录,首先将传入参数与数据库中管理员对比,如果有此人,登录成功,如果没有,登录失败
    @SneakyThrows
    @RequestMapping("/adminLogin")
    public void adminLogin(Admin admin1, HttpServletRequest request, HttpServletResponse response) {

        Admin admin = adminService.adminLogin(admin1);

        if (admin != null) {
            request.getSession(true).setAttribute("admin", admin);
            response.sendRedirect("/html/backStageFrameset.jsp");

        } else {

            response.setCharacterEncoding("GBK");
            PrintWriter out = response.getWriter();
            out.println("<script language='javascript'>alert('用户名或密码错误，请重新输入！')</script>");
            out.println("<script language='javascript'>window.location.href='/html/login-reg/login.html'</script>");
        }
    }

    // 退出登录,销毁session,返回到主界面
    @RequestMapping("/adminLogout")
    public ModelAndView adminLogout(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession(false);

        session.invalidate();
        modelAndView.setViewName("/frontPage/frontPage.jsp");
        return modelAndView;
    }

    // 管理员修改个人信息
    @SneakyThrows
    @RequestMapping("/updateAdmin")
    public void updateAdmin(Admin admin, HttpServletRequest request, HttpServletResponse response) {

        adminService.updateAdmin(admin);
        request.getSession().invalidate();
        request.getSession(true).setAttribute("admin", admin);

        response.sendRedirect("/html/backStageFrameset.jsp");

    }
}
