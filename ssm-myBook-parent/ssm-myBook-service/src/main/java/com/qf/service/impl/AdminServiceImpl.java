package com.qf.service.impl;

import com.qf.dao.AdminDao;
import com.qf.pojo.Admin;
import com.qf.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public void addAdmin(Admin admin) {
        adminDao.addAdmin(admin);
    }

    @Override
    public Admin adminLogin(Admin admin) {
        return adminDao.adminLogin(admin);
    }

    @Override
    public void updateAdmin(Admin admin) {
        adminDao.updateAdmin(admin);
    }

    @Override
    public List<Admin> findAllAdmin() {
        return adminDao.findAllAdmin();
    }
}
