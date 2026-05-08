package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.Supplier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "supplier")
public interface SupplierRepository extends JpaRepository<Supplier, Integer> {

	Page<Supplier> findAllByOrderByLastNameAsc(Pageable pageable);

	Page<Supplier> findAllByOrderByLastNameDesc(Pageable pageable);

	Page<Supplier> findByJobTitleOrderByLastNameAsc(String jobTitle, Pageable pageable);

	Page<Supplier> findByJobTitleOrderByLastNameDesc(String jobTitle, Pageable pageable);
	
}
