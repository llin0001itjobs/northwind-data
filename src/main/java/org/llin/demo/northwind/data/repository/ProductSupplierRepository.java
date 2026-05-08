package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.ProductSupplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="productSupplier")
public interface ProductSupplierRepository extends JpaRepository<ProductSupplier, Integer> {

}
