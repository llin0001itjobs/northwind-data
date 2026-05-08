package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.OrderStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="orderStatus") 
public interface OrderStatusRepository extends JpaRepository<OrderStatus, Integer> {

}
