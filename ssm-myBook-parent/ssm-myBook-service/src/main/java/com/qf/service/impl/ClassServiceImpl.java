package com.qf.service.impl;

import com.qf.dao.ClassDao;
import com.qf.pojo.Class;
import com.qf.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassServiceImpl implements ClassService {

    @Autowired
    private ClassDao classDao;
    @Override
    public List<Class> findAll() {
        return classDao.findAll();
    }

    @Override
    public void addClass(Class aClass) {
        classDao.addClass(aClass);
    }

    @Override
    public Class findById(Integer id) {
        return classDao.findById(id);
    }

    @Override
    public void modifyClass(Class aClass) {
        classDao.modifyClass(aClass);
    }

    @Override
    public void deleteClass(Integer id) {
        classDao.deleteClass(id);
    }


}
