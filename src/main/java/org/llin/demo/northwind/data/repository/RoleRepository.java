package org.llin.demo.northwind.data.repository;

import java.util.Optional;

import org.llin.demo.northwind.data.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="role")
public interface RoleRepository extends JpaRepository<Role, Integer> {
	
	Optional<Role> findByType(String type);
	
}
