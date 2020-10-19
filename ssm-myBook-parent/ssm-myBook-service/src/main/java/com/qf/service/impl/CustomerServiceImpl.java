package com.qf.service.impl;

import com.qf.dao.CustomerDao;
import com.qf.pojo.Customer;
import com.qf.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    @Override
    public void addCustomer(Customer customer) {
        customerDao.addCustomer(customer);
    }

    @Override
    public List<Customer> findAllCustomer() {
        return customerDao.findAllCustomer();
    }

    @Override
    public Customer customerLogin(Customer customer) {
        return customerDao.customerLogin(customer);
    }

    @Override
    public void deleteCustomer(Integer id) {
        customerDao.deleteCustomer(id);
    }
}
