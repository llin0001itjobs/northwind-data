package org.llin.demo.northwind.data;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.llin.demo.northwind.data.service.CustomerOrderService;
import org.llin.demo.northwind.data.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest()
@ActiveProfiles("test")
class TestControllerIntegrationTest {

	@Autowired
	private CustomerService cu;
	
	@Autowired
	private CustomerOrderService co;
	
	@Test
	void test() {
		assertNotNull(co);
		assertNotNull(cu);
	}

}
