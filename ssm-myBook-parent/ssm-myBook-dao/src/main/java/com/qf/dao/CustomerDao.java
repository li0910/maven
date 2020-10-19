package com.qf.dao;

import com.qf.pojo.Customer;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerDao {

    void addCustomer(Customer customer);

    List<Customer> findAllCustomer();

    Customer customerLogin(Customer customer);

    void deleteCustomer(@Param("id") Integer id);
}
