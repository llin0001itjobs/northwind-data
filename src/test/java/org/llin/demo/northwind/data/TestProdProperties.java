package org.llin.demo.northwind.data;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.llin.demo.northwind.data.config.ProdAppProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("prod")
@EnableConfigurationProperties(ProdAppProperties.class)
public class TestProdProperties {

    @Autowired
    private ProdAppProperties prodAppProperties;

    public void testProdPropertyValues() {
        assertNotNull(prodAppProperties.getDatasource().getUrl());
        assertNotNull(prodAppProperties.getJpa().getDatabasePlatform());
        assertNotNull(prodAppProperties.getLogging().getLevel());
    }
}