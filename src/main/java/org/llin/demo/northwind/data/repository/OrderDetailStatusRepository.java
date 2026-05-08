package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.OrderDetailStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="orderDetailStatus")
public interface OrderDetailStatusRepository extends JpaRepository<OrderDetailStatus, Integer> {

}
