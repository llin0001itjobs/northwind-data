package org.llin.demo.northwind.data;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.llin.demo.northwind.data.repository.CustomerOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

@DataJpaTest
@ActiveProfiles("test")
class NorthwindRepositoryTest {

    @Autowired
    private CustomerOrderRepository coRepository; // your JpaRepository

    @Test
    void shouldFindMoreThanZeroCustomers() {
    	assertThat(coRepository.findAll()).hasSizeGreaterThan(0);
    }
}