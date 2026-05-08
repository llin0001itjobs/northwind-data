package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.Shipper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="shipper")
public interface ShipperRepository extends JpaRepository<Shipper, Integer> {


	Page<Shipper> findAllByOrderByStateProvinceAsc(Pageable pageable);
	Page<Shipper> findAllByOrderByStateProvinceDesc(Pageable pageable);
	
}
