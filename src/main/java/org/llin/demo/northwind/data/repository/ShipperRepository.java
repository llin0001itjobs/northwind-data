package org.llin.demo.northwind.data.repository;

import java.util.List;

import org.llin.demo.northwind.data.entity.Shipper;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="shipper")
public interface ShipperRepository extends JpaRepository<Shipper, Integer> {

	List<Shipper> findAllByLastName(String lastName);
	List<Shipper> findByJobTitle(String jobTitle);
	List<Shipper> findByEmailAddress(String emailAddress);
	
	List<Shipper> findByLastNameContaining(String lastName);        // LIKE '%value%'
	List<Shipper> findByFirstNameContaining(String firstName);
	List<Shipper> findByJobTitleContaining(String jobTitle);
	
}
