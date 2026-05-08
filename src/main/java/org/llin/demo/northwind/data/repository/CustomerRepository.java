package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="customer")
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
				
}
