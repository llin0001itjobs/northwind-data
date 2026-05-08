package org.llin.demo.northwind.data;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("dev")
@EnableConfigurationProperties(PropertyDefaultProperties.class)
public class TestDefaultProperties {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;

	@Test
	public void testDefaultPropertyValues() {
		assertNotNull(propertyDefaultConfig.getInfo().getDescription());
		assertNotNull(propertyDefaultConfig.getServer().getContextPath());
		assertNotNull(propertyDefaultConfig.getSpring().getJackson().getDateFormat());
		assertNotNull(propertyDefaultConfig.getSpring().getData().getJpa().getEntityPackagesToScan());
		assertNotNull(propertyDefaultConfig.getSpring().getData().getJpa().getRepositoryPackages());
	}

}