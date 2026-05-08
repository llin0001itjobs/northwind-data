package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.PurchaseOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "purchaseOrder")
public interface PurchaseOrderRepository extends JpaRepository<PurchaseOrder, Integer> {



}
