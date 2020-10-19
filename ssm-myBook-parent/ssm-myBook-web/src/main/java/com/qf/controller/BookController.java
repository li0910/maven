package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.Book;
import com.qf.pojo.Class;
import com.qf.pojo.QueryVo;
import com.qf.service.BookService;

import com.qf.service.ClassService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @Autowired
    private ClassService classService;

    @RequestMapping("/findById")
    public ModelAndView findById(Integer id) {
        ModelAndView modelAndView = new ModelAndView();

        Book book = bookService.findById(id);
        List<Class> classes = classService.findAll();

        System.out.println(book);


        modelAndView.addObject("book",book);
        modelAndView.addObject("classes",classes);
        modelAndView.setViewName("//WEB-INF/jsp/bookDetil.jsp");
        return modelAndView;
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                @RequestParam(required = false, defaultValue = "3") Integer pageSize,
                                QueryVo queryVo) {
        ModelAndView modelAndView = new ModelAndView();

        PageHelper.startPage(pageNum, pageSize);
        List<Book> books = bookService.findAll(queryVo);
        PageInfo<Book> pageInfo = new PageInfo<>(books);
        modelAndView.addObject("pageInfo", pageInfo);

        // 查询书籍的分类信息
        List<Class> classes = classService.findAll();
        modelAndView.addObject("classes", classes);
        modelAndView.setViewName("/WEB-INF/jsp/findAllList.jsp");
        return modelAndView;

    }

    @RequestMapping("/toAddBook")
    public ModelAndView toAddBook() {
        ModelAndView modelAndView = new ModelAndView();
        List<Class> classes = classService.findAll();
        modelAndView.addObject("classes", classes);
        modelAndView.setViewName("/WEB-INF/jsp/addBook.jsp");
        return modelAndView;
    }

    @SneakyThrows
    @RequestMapping("/addBook")
    public ModelAndView addBook(Book book, MultipartFile picture) {
        ModelAndView modelAndView = new ModelAndView();
        // 选择上传地址
        String path = "D:\\study tools\\server\\apache-tomcat-8.5.41\\webapps\\upload\\";

        // 上传的文件名
        String pictureName = picture.getOriginalFilename();

        //上传文件
        File file = new File(path + pictureName);

        // 上传方法
        picture.transferTo(file);

        // 设置path属性
        book.setPath(pictureName);

        modelAndView.addObject("book", book);
        bookService.addBook(book);

        modelAndView.setViewName("/book/findAll");
        return modelAndView;
    }

    @RequestMapping("/updateBook")
    public ModelAndView updateBook(Integer id) {
        System.out.println(id);
        ModelAndView modelAndView = new ModelAndView();
        Book book = bookService.findById(id);

        modelAndView.addObject("book", book);
        modelAndView.setViewName("/WEB-INF/jsp/updateBook.jsp");
        return modelAndView;
    }

    @RequestMapping("/modifyBook")
    public ModelAndView modifyBook(Book book) {

        System.out.println(book);
        ModelAndView modelAndView = new ModelAndView();
        bookService.modifyBook(book);

        modelAndView.setViewName("/book/findAll");
        return modelAndView;
    }

    @RequestMapping("/deleteBook")
    public ModelAndView deleteBook(Integer id) {
        ModelAndView modelAndView = new ModelAndView();
        bookService.deleteBook(id);

        modelAndView.setViewName("/book/findAll");
        return modelAndView;
    }

    @RequestMapping("/delAll")
    public String deAll(Integer[] ids) {
        for (Integer id : ids) {
            bookService.deleteBook(id);
        }
        return "redirect:/book/findAll";
    }

    // 访问商城时,首先index界面访问该方法,然后将所有数据的信息带到商城首页
    @RequestMapping("/shopNeed")
    public ModelAndView shopNeed(@RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                 @RequestParam(required = false, defaultValue = "24") Integer pageSize) {

        ModelAndView modelAndView = new ModelAndView();


        PageHelper.startPage(pageNum, pageSize);
        List<Book> books = bookService.findAll(null);
        PageInfo<Book> pageInfo = new PageInfo<>(books);

        modelAndView.addObject("pageInfo", pageInfo);
        // 查询书籍的分类信息
        List<Class> classes = classService.findAll();
        modelAndView.addObject("classes", classes);

        modelAndView.setViewName("/frontPage/frontPage.jsp");
        return modelAndView;
    }

}
