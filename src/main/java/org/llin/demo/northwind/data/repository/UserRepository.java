package org.llin.demo.northwind.data.repository;

import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "user")
public interface UserRepository extends JpaRepository<User, Integer> {

	// Only ROLE_ADMIN users are allowed to call these (see note below)

	Optional<User> findByUsername(@Param("username") String username);

	Optional<User> findByEmail(@Param("email") String email);

	List<User> findByEnabled(@Param("enabled") boolean enabled);

	List<User> findByEmailVerified(@Param("emailVerified") boolean emailVerified);

	Optional<User> findByVerificationToken(@Param("verificationToken") String verificationToken);

	List<User> findByUsernameContaining(@Param("username")String username);

	List<User> findByEmailContaining(@Param("email") String email);

}
