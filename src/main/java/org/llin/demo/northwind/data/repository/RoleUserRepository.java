package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.RoleUserDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="roleUser")
public interface RoleUserRepository extends JpaRepository<RoleUserDetail, Integer> {

	
}
