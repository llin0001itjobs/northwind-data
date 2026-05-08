package org.llin.demo.northwind.data;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest(classes = {
		Application.class }, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
class TestServiceIntegrationTest {

	@Autowired
	private TestRestTemplate restTemplate;

	@Test
	void testEntityManagerConnection() {
		String response = restTemplate.getForObject("/api/test", String.class);
		System.out.println("Response: " + response);
		assertNotNull(response);
		assertTrue(response.contains("EntityManager")); // optional check
	}

}
