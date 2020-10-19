package com.qf.service;

import com.qf.pojo.Customer;

import java.util.List;

public interface CustomerService {
    void addCustomer(Customer customer);

    List<Customer> findAllCustomer();

    Customer customerLogin(Customer customer);

    void deleteCustomer(Integer id);
}
