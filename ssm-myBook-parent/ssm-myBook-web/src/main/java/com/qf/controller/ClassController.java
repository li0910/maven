package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.Class;
import com.qf.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/class")
public class ClassController {
    @Autowired
    private ClassService classService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(required = false,defaultValue = "1")Integer pageNum,
                                @RequestParam(required = false,defaultValue = "3")Integer pageSize) {

        ModelAndView modelAndView = new ModelAndView();

        PageHelper.startPage(pageNum,pageSize);
        List<Class> classes = classService.findAll();
        PageInfo<Class> pageInfo = new PageInfo<>(classes);

        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("/WEB-INF/jsp/findAllClass.jsp");

        return modelAndView;
    }

    @RequestMapping("/toAddClass")
    public ModelAndView toAddClass() {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("/WEB-INF/jsp/addClass.jsp");
        return modelAndView;
    }

    @RequestMapping("/addClass")
    public ModelAndView addClass(Class aClass) {
        ModelAndView modelAndView = new ModelAndView();

        classService.addClass(aClass);

        modelAndView.setViewName("/class/findAll");
        return modelAndView;
    }

    @RequestMapping("/updateClass")
    public ModelAndView updateClass(Integer id){
        ModelAndView modelAndView = new ModelAndView();
        Class aClass = classService.findById(id);

        modelAndView.addObject("aClass",aClass);
        modelAndView.setViewName("/WEB-INF/jsp/updateClass.jsp");

        return modelAndView;
    }

    @RequestMapping("/modifyClass")
    public ModelAndView modifyClass(Class aClass) {
        ModelAndView modelAndView = new ModelAndView();

        classService.modifyClass(aClass);
        modelAndView.setViewName("/class/findAll");
        return modelAndView;
    }

    @RequestMapping("/deleteClass")
    public ModelAndView deleteClass(Integer id){
        ModelAndView modelAndView = new ModelAndView();
        classService.deleteClass(id);

        modelAndView.setViewName("/class/findAll");
        return modelAndView;
    }
}
