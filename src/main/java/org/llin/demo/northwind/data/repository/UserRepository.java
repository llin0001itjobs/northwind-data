package org.llin.demo.northwind.data.repository;

import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="user")
public interface UserRepository extends JpaRepository<User, Integer> {
	
	// Only ROLE_ADMIN users are allowed to call these (see note below)
    Optional<User> findByUsername(String username);
    Optional<User> findByEmail(String email);
    List<User> findByEnabled(Boolean enabled);
    List<User> findByEmailVerified(Boolean emailVerified);
    Optional<User> findByRoleId(Integer roleId);
    Optional<User> findByVerificationToken(String token);
	
    List<User> findByUsernameContaining(String username);
    List<User> findByEmailContaining(String email);
}

