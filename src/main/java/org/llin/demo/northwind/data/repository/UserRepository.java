package org.llin.demo.northwind.data.repository;

import java.util.List;

import org.llin.demo.northwind.data.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="user")
public interface UserRepository extends JpaRepository<User, Integer> {
	
	// Only ROLE_ADMIN users are allowed to call these (see note below)
    List<User> findByUsername(String username);
    List<User> findByEmail(String email);
    List<User> findByEnabled(Boolean enabled);
    List<User> findByEmailVerified(Boolean emailVerified);
    List<User> findByRoleId(Integer roleId);

    List<User> findByUsernameContaining(String username);
    List<User> findByEmailContaining(String email);
}

