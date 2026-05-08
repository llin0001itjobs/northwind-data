package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.PaymentType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="paymentType")
public interface PaymentTypeRepository extends JpaRepository<PaymentType, Integer> {

}
