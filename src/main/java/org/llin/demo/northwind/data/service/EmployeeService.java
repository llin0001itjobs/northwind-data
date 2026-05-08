package org.llin.demo.northwind.data.service;

import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.Employee;
import org.llin.demo.northwind.data.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService  {
	
	@Autowired
	private EmployeeRepository er;
		
	public List<Employee> getEmployees() {
		return getEmployees(Integer.MAX_VALUE);			
	}
		
	public List<Employee> getEmployees(int size) {
		List<Employee> list = (List<Employee>) er.findAll();
		size = list.size() < size ? list.size() : size;
		list = list.subList(0, size);
		return list;		
	}

	public Optional<Employee> getEmployee(Integer id) {
		return  er.findById(id);
	}

	public long getCount() {
		return  er.count();
	} 
}
