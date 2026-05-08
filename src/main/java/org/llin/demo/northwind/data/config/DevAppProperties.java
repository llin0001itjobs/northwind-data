package org.llin.demo.northwind.data.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Profile;
import org.springframework.validation.annotation.Validated;

import jakarta.validation.constraints.NotBlank;

@ConfigurationProperties(prefix = "dev")
@Profile("dev")
@Validated
public class DevAppProperties {

    private final Datasource datasource = new Datasource();
    private final Jpa jpa = new Jpa();
    private final Ssl ssl = new Ssl();

    public static class Datasource {
        @NotBlank
        private String url;

        @NotBlank
        private String username;

        private String password;

        // Getters and Setters
        public String getUrl() { return url; }
        public void setUrl(String url) { this.url = url; }

        public String getUsername() { return username; }
        public void setUsername(String username) { this.username = username; }

        public String getPassword() { return password; }
        public void setPassword(String password) { this.password = password; }
    }

    public static class Jpa {
        private String showSql;
        private String ddlAuto;
        private String databasePlatform;
        private String hibernateDialect;

        // Getters and Setters
        public String getShowSql() { return showSql; }
        public void setShowSql(String showSql) { this.showSql = showSql; }

        public String getDdlAuto() { return ddlAuto; }
        public void setDdlAuto(String ddlAuto) { this.ddlAuto = ddlAuto; }

        public String getDatabasePlatform() { return databasePlatform; }
        public void setDatabasePlatform(String databasePlatform) { this.databasePlatform = databasePlatform; }

        public String getHibernateDialect() { return hibernateDialect; }
        public void setHibernateDialect(String hibernateDialect) { this.hibernateDialect = hibernateDialect; }
    }


    public static class Ssl {
        private String keyStore;
        private String keyStoreType;
        private String keyStorePassword;
        private String keyAlias;
        private String trustStore;

        // Getters and Setters
        public String getKeyStore() { return keyStore; }
        public void setKeyStore(String keyStore) { this.keyStore = keyStore; }

        public String getKeyStoreType() { return keyStoreType; }
        public void setKeyStoreType(String keyStoreType) { this.keyStoreType = keyStoreType; }

        public String getKeyStorePassword() { return keyStorePassword; }
        public void setKeyStorePassword(String keyStorePassword) { this.keyStorePassword = keyStorePassword; }

        public String getKeyAlias() { return keyAlias; }
        public void setKeyAlias(String keyAlias) { this.keyAlias = keyAlias; }

        public String getTrustStore() { return trustStore; }
        public void setTrustStore(String trustStore) { this.trustStore = trustStore; }
    }
    
    // Getters for nested properties
    public Ssl getSsl() { return ssl; }
    public Datasource getDatasource() { return datasource; }
    public Jpa getJpa() { return jpa; }
}
