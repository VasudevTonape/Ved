package com.niit.service;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerServices {
	void addCustomer(Customer customer);

	List<Customer> getAllCustomers();
}
