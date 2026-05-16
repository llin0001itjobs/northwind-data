package org.llin.demo.northwind.data.repository;


import java.util.List;

import org.llin.demo.northwind.data.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

//List<Tutorial> findByTitleContaining(String title);
//http://localhost:8080/northwind-data/api/employees/search?
@RepositoryRestResource(path="employee")
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	
	List<Employee> findAllByLastName(String lastName);
	List<Employee> findByJobTitle(String jobTitle);
	List<Employee> findByEmailAddress(String emailAddress);
	
	List<Employee> findByLastNameContaining(String lastName);        // LIKE '%value%'
	List<Employee> findByFirstNameContaining(String firstName);
	List<Employee> findByJobTitleContaining(String jobTitle);
	
}
 