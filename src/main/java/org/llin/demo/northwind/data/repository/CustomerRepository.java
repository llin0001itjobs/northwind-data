package org.llin.demo.northwind.data.repository;

import java.util.List;

import org.llin.demo.northwind.data.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="customer")
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
		
	List<Customer> findAllByLastName(String lastName);
	List<Customer> findByJobTitle(String jobTitle);
	List<Customer> findByEmailAddress(String emailAddress);
	
	List<Customer> findByLastNameContaining(String lastName);        // LIKE '%value%'
	List<Customer> findByFirstNameContaining(String firstName);
	List<Customer> findByJobTitleContaining(String jobTitle);
}
