package org.llin.demo.northwind.data.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import jakarta.annotation.PostConstruct;

@Configuration
@EnableConfigurationProperties(PropertyDefaultProperties.class)
public class PropertyConfig {

    private static final Logger logger = LoggerFactory.getLogger(PropertyConfig.class);

    private final PropertyDefaultProperties propertyDefaultConfig;

    @Autowired
    public PropertyConfig(PropertyDefaultProperties propertyDefaultConfig) {
        this.propertyDefaultConfig = propertyDefaultConfig;
    }

    @PostConstruct
    public void logProperties() {
        logger.info("[Loaded Configuration]");
        logger.info("Default Config: {}", propertyDefaultConfig);
    }

    public PropertyDefaultProperties getPropertyDefaultProperties() {
        return propertyDefaultConfig;
    }
}