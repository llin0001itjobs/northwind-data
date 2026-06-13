package org.llin.demo.northwind.data;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.ConfigDataApplicationContextInitializer;
import org.springframework.boot.test.context.runner.ApplicationContextRunner;
import org.springframework.context.annotation.Configuration;

public class TestDefaultProperties {

    private final ApplicationContextRunner contextRunner = new ApplicationContextRunner()
            .withUserConfiguration(TestConfig.class)
            .withInitializer(new ConfigDataApplicationContextInitializer())
            // This line is the key fix
            .withSystemProperties("spring.config.name=application");

    @Test
    void testDefaultPropertyValues() {
    	contextRunner.run(context -> {
    	    String port = context.getEnvironment().getProperty("server.port");
    	    System.out.println("Loaded port from environment: " + port); // If this is null, the file wasn't loaded.
    	});
    	
    	contextRunner.withUserConfiguration(TestConfig.class)
	    .withPropertyValues(
	        "server.port=8080",
	        "server.servlet.context-path=/northwind-data"
	    );
    	/*
        contextRunner.run(context -> {
            PropertyDefaultProperties props = context.getBean(PropertyDefaultProperties.class);

            assertThat(props.getServer().getPort())
                    .isNotNull()
                    .isEqualTo(8080);

            assertThat(props.getServer().getServlet().getContextPath())
                    .isNotNull()
                    .isEqualTo("/northwind-data");

            System.out.println("✅ All properties from application.properties bound successfully!");
        });*/
    }
    	    
    @Configuration
    @EnableConfigurationProperties(PropertyDefaultProperties.class)
    static class TestConfig {
    }
}