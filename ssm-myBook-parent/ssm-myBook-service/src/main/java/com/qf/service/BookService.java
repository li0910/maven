package com.qf.service;

import com.qf.pojo.Book;
import com.qf.pojo.QueryVo;

import java.util.List;

public interface BookService {
    public List<Book> findAll(QueryVo queryVo);

    void addBook(Book book);

    Book findById(Integer id);

    void deleteBook(Integer id);

    void modifyBook(Book book);

}
