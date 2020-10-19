package com.qf.dao;

import com.qf.pojo.Book;
import com.qf.pojo.QueryVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookDao {
     public List<Book> findAll(QueryVo queryVo);

    void addBook(Book book);

    Book findById(@Param("id") Integer id);

    void deleteBook(@Param("id") Integer id);

    void modifyBook(Book book);

}
