package com.qf.dao;

import com.qf.pojo.Admin;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {

    void addAdmin(Admin admin);

    Admin adminLogin(Admin admin);

    void updateAdmin(Admin admin);

    List<Admin> findAllAdmin();
}
