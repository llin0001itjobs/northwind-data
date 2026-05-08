package org.llin.demo.northwind.data;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.llin.demo.northwind.data.config.DevAppProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("dev")
@EnableConfigurationProperties(DevAppProperties.class)
public class TestDevProperties {

	@Autowired
	private DevAppProperties devAppProperties;

	@Test
    public void testDevPropertyValues() {
        assertNotNull(devAppProperties.getDatasource().getUrl());
        assertNotNull(devAppProperties.getJpa().getHibernateDialect());
        assertNotNull(devAppProperties.getSsl().getKeyAlias());
        assertNotNull(devAppProperties.getSsl().getTrustStore());
    }
}