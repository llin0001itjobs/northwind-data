package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.OrderTaxStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="orderTaxStatus")
public interface OrderTaxStatusRepository extends JpaRepository<OrderTaxStatus, Integer> {

}
