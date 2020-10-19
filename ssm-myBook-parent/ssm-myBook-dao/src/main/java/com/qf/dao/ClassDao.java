package com.qf.dao;

import com.qf.pojo.Class;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClassDao {
    public Class findById(@Param("id") Integer id);

    List<Class> findAll();

    void addClass(Class aClass);

    void modifyClass(Class aClass);

    void deleteClass(@Param("id") Integer id);
}
