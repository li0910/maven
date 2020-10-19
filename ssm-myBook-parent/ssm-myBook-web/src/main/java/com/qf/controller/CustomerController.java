package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.Customer;
import com.qf.service.ClassService;
import com.qf.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    @Autowired
    private ClassService classService;

    // 注册用户
    @RequestMapping("/addCustomer")
    public ModelAndView addCustomer(Customer customer){

        System.out.println(customer);

        ModelAndView modelAndView = new ModelAndView();
        customerService.addCustomer(customer);

        // modelAndView.setViewName("/customer/findAllCustomer");
        return modelAndView;
    }

    @RequestMapping("/findAllCustomer")
    public ModelAndView findAllCustomer(@RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                        @RequestParam(required = false, defaultValue = "3") Integer pageSize) {
        ModelAndView modelAndView = new ModelAndView();

        PageHelper.startPage(pageNum,pageSize);
        List<Customer> customers = customerService.findAllCustomer();
        PageInfo<Customer> pageInfo = new PageInfo<>();

        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("/WEB-INF/jsp/customerList.jsp");

        return modelAndView;
    }

    @RequestMapping("/customerLogin")
    public ModelAndView compareMessage(Customer customer1, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        Customer customer = customerService.customerLogin(customer1);

        if (customer1 != null) {
            request.getSession(true).setAttribute("customer",customer);

            //通过数据库查有此人, 跳转到主商城界面
            modelAndView.setViewName("/frontPage/frontPage.html");
        } else {

            // 没有在数据库中查到此人,跳转到登录注册界面
            modelAndView.setViewName("/html/customerLogin.html");
        }


        return modelAndView;
    }
    @RequestMapping("/customerLogout")
    public ModelAndView customerLogout(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();

        HttpSession session = request.getSession(false);
        session.invalidate();

        modelAndView.setViewName("/index.jsp");
        return modelAndView;
    }

    @RequestMapping("/deleteCustomer")
    public ModelAndView deleteCustomer(Integer id) {
        ModelAndView modelAndView = new ModelAndView();
        customerService.deleteCustomer(id);

        modelAndView.setViewName("/customer/findAllCustomer");
        return modelAndView;
    }

}
