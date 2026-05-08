package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="company")
public interface CompanyRepository extends JpaRepository<Company, Integer> {


}
