package com.qf.service.impl;


import com.qf.dao.BookDao;
import com.qf.pojo.Book;
import com.qf.pojo.QueryVo;
import com.qf.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;

    @Override
    public List<Book> findAll(QueryVo queryVo) {
        return bookDao.findAll(queryVo);
    }

    @Override
    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    @Override
    public Book findById(Integer id) {
        return bookDao.findById(id);
    }

    @Override
    public void deleteBook(Integer id) {
        bookDao.deleteBook(id);
    }

    @Override
    public void modifyBook(Book book) {
        bookDao.modifyBook(book);
    }

}
