package org.llin.demo.northwind.data;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.llin.demo.northwind.data.controller.IndexController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest()
@ActiveProfiles("test")
class TestControllerTest {

	@Autowired
	private IndexController indexController;

	@Test
	void test() {
		assertNotNull(indexController);
	}

}
