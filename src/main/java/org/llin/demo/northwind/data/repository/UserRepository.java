package org.llin.demo.northwind.data.repository;

import java.util.Optional;

import org.llin.demo.northwind.data.entity.UserDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="user")
public interface UserRepository extends JpaRepository<UserDetail, Integer> {
	public Optional<UserDetail> findByUsername(String userName);
}
