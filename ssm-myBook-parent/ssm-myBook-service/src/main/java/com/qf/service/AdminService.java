package com.qf.service;

import com.qf.pojo.Admin;

import java.util.List;

public interface AdminService {

    void addAdmin(Admin admin);

    Admin adminLogin(Admin admin);

    void updateAdmin(Admin admin);
    List<Admin> findAllAdmin();
}
