package com.qf.service;

import com.qf.pojo.Book;
import com.qf.pojo.Class;

import java.util.List;

public interface ClassService {
    List<Class> findAll();

    void addClass(Class aClass);

    Class findById(Integer id);

    void modifyClass(Class aClass);

    void deleteClass(Integer id);

}
