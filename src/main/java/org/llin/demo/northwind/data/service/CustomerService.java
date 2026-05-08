package org.llin.demo.northwind.data.service;

import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.Customer;
import org.llin.demo.northwind.data.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository cr;

	public List<Customer> getCustomers() {
		return getCustomers(Integer.MAX_VALUE);
	}

	public List<Customer> getCustomers(int size) {
		List<Customer> list = (List<Customer>) cr.findAll();
		size = list.size() < size ? list.size() : size;
		list = list.subList(0, size);
		return list;
	}

	public Optional<Customer> getCustomer(Integer id) {
		return cr.findById(id);
	}

	public long getCount() {
		return cr.count();
	}

}
