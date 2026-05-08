package org.llin.demo.northwind.data.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import jakarta.annotation.PostConstruct;

@Configuration
@EnableConfigurationProperties({ PropertyDefaultProperties.class, DevAppProperties.class, ProdAppProperties.class })
public class PropertyConfig {

	private static final Logger logger = LoggerFactory.getLogger(PropertyConfig.class);

	private int dataSampleSize = 1;

	private final PropertyDefaultProperties propertyDefaultConfig;
	private final DevAppProperties devAppProperties;
	private final ProdAppProperties prodAppProperties;

	@Autowired
	public PropertyConfig(PropertyDefaultProperties propertyDefaultConfig, DevAppProperties devAppProperties,
			ProdAppProperties prodAppProperties) {
		this.propertyDefaultConfig = propertyDefaultConfig;
		this.devAppProperties = devAppProperties;
		this.prodAppProperties = prodAppProperties;
	}

	@PostConstruct
	public void logProperties() {
		logger.info("[Loaded Configuration]");
		logger.info("Default Config: {}", propertyDefaultConfig);
		logger.info("Dev Config: datasourceUrl={}, dialect={}", devAppProperties.getDatasource().getUrl(),
				devAppProperties.getJpa().getHibernateDialect());
		logger.info("Prod Config: datasourceUrl={}, ddl-auto={}", prodAppProperties.getDatasource().getUrl(),
				prodAppProperties.getJpa().getDdlAuto());
	}

	public PropertyDefaultProperties getPropertyDefaultProperties() {
		return propertyDefaultConfig;
	}

	public DevAppProperties getDevAppProperties() {
		return devAppProperties;
	}

	public ProdAppProperties getProdAppProperties() {
		return prodAppProperties;
	}

	public int getDataSampleSize() {
		return dataSampleSize;
	}

	public void setDataSampleSize(int dataSampleSize) {
		this.dataSampleSize = dataSampleSize;
	}
}
