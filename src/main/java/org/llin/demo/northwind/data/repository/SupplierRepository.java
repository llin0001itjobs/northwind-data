package org.llin.demo.northwind.data.repository;

import java.util.List;

import org.llin.demo.northwind.data.entity.Supplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "supplier")
public interface SupplierRepository extends JpaRepository<Supplier, Integer> {

	List<Supplier> findAllByLastName(String lastName);
	List<Supplier> findByJobTitle(String jobTitle);
	List<Supplier> findByEmailAddress(String emailAddress);
	
	List<Supplier> findByLastNameContaining(String lastName);        // LIKE '%value%'
	List<Supplier> findByFirstNameContaining(String firstName);
	List<Supplier> findByJobTitleContaining(String jobTitle);

	
}
