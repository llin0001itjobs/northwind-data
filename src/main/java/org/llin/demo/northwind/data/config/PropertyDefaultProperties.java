package org.llin.demo.northwind.data.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.validation.annotation.Validated;

import jakarta.validation.constraints.NotNull;

@ConfigurationProperties(prefix = "northwind")   // ← Recommended prefix
@Validated
public class PropertyDefaultProperties {

    @NotNull
    private Server server = new Server();

    @NotNull
    private Spring spring = new Spring();

    @NotNull
    private Management management = new Management();

    @NotNull
    private Info info = new Info();

    // ==================== NESTED CLASSES ====================

    public static class Server {
        private String address;
        private int port;
        private Servlet servlet = new Servlet();

        public static class Servlet {
            private String contextPath;

            // getters & setters
            public String getContextPath() { return contextPath; }
            public void setContextPath(String contextPath) { this.contextPath = contextPath; }

            @Override
            public String toString() {
                return "Servlet[contextPath=" + contextPath + "]";
            }
        }

        // getters & setters + toString...
        public String getAddress() { return address; }
        public void setAddress(String address) { this.address = address; }
        public int getPort() { return port; }
        public void setPort(int port) { this.port = port; }
        public Servlet getServlet() { return servlet; }
        public void setServlet(Servlet servlet) { this.servlet = servlet; }

        @Override
        public String toString() {
            return "Server[address=" + address + ", port=" + port + ", servlet=" + servlet + "]";
        }
    }

    public static class Spring {
        private Data data = new Data();
        private Jackson jackson = new Jackson();
        private Jpa jpa = new Jpa();

        public static class Data {
            private Rest rest = new Rest();
            private JpaConfig jpa = new JpaConfig();   // ← Renamed to avoid conflict

            public static class Rest {
                private String basePath;
                private int defaultPageSize;
                private int maxPageSize;

                // getters & setters + toString...
                public String getBasePath() { return basePath; }
                public void setBasePath(String basePath) { this.basePath = basePath; }
                public int getDefaultPageSize() { return defaultPageSize; }
                public void setDefaultPageSize(int defaultPageSize) { this.defaultPageSize = defaultPageSize; }
                public int getMaxPageSize() { return maxPageSize; }
                public void setMaxPageSize(int maxPageSize) { this.maxPageSize = maxPageSize; }

                @Override
                public String toString() {
                    return "Rest[basePath=" + basePath + ", defaultPageSize=" + defaultPageSize +
                           ", maxPageSize=" + maxPageSize + "]";
                }
            }

            public static class JpaConfig {           // ← Renamed from Jpa
                private String repositoryPackages;
                private String entityPackagesToScan;

                // getters & setters + toString...
                public String getRepositoryPackages() { return repositoryPackages; }
                public void setRepositoryPackages(String repositoryPackages) { this.repositoryPackages = repositoryPackages; }
                public String getEntityPackagesToScan() { return entityPackagesToScan; }
                public void setEntityPackagesToScan(String entityPackagesToScan) { this.entityPackagesToScan = entityPackagesToScan; }

                @Override
                public String toString() {
                    return "JpaConfig[repositoryPackages=" + repositoryPackages +
                           ", entityPackagesToScan=" + entityPackagesToScan + "]";
                }
            }

            public Rest getRest() { return rest; }
            public void setRest(Rest rest) { this.rest = rest; }
            public JpaConfig getJpa() { return jpa; }
            public void setJpa(JpaConfig jpa) { this.jpa = jpa; }

            @Override
            public String toString() {
                return "Data[rest=" + rest + ", jpa=" + jpa + "]";
            }
        }

        public static class Jackson {
            private String dateFormat;
            private String timeZone;

            // getters & setters + toString...
            public String getDateFormat() { return dateFormat; }
            public void setDateFormat(String dateFormat) { this.dateFormat = dateFormat; }
            public String getTimeZone() { return timeZone; }
            public void setTimeZone(String timeZone) { this.timeZone = timeZone; }

            @Override
            public String toString() {
                return "Jackson[dateFormat=" + dateFormat + ", timeZone=" + timeZone + "]";
            }
        }

        public static class Jpa {
            private boolean openInView;

            public boolean isOpenInView() { return openInView; }
            public void setOpenInView(boolean openInView) { this.openInView = openInView; }

            @Override
            public String toString() {
                return "Jpa[openInView=" + openInView + "]";
            }
        }

        // getters & setters for Spring
        public Data getData() { return data; }
        public void setData(Data data) { this.data = data; }
        public Jackson getJackson() { return jackson; }
        public void setJackson(Jackson jackson) { this.jackson = jackson; }
        public Jpa getJpa() { return jpa; }
        public void setJpa(Jpa jpa) { this.jpa = jpa; }

        @Override
        public String toString() {
            return "Spring[data=" + data + ", jackson=" + jackson + ", jpa=" + jpa + "]";
        }
    }

    public static class Management {
        private Endpoints endpoints = new Endpoints();
        private boolean infoEnvEnabled;

        public static class Endpoints {
            private Web web = new Web();

            public static class Web {
                private String exposureInclude;
                private String exposureExclude;

                // getters & setters + toString...
                public String getExposureInclude() { return exposureInclude; }
                public void setExposureInclude(String exposureInclude) { this.exposureInclude = exposureInclude; }
                public String getExposureExclude() { return exposureExclude; }
                public void setExposureExclude(String exposureExclude) { this.exposureExclude = exposureExclude; }

                @Override
                public String toString() {
                    return "Web[exposureInclude=" + exposureInclude + ", exposureExclude=" + exposureExclude + "]";
                }
            }

            public Web getWeb() { return web; }
            public void setWeb(Web web) { this.web = web; }

            @Override
            public String toString() {
                return "Endpoints[web=" + web + "]";
            }
        }

        // getters & setters + toString for Management...
        public Endpoints getEndpoints() { return endpoints; }
        public void setEndpoints(Endpoints endpoints) { this.endpoints = endpoints; }
        public boolean isInfoEnvEnabled() { return infoEnvEnabled; }
        public void setInfoEnvEnabled(boolean infoEnvEnabled) { this.infoEnvEnabled = infoEnvEnabled; }

        @Override
        public String toString() {
            return "Management[endpoints=" + endpoints + ", infoEnvEnabled=" + infoEnvEnabled + "]";
        }
    }

    public static class Info {
        private String name;
        private String description;
        private String version;

        // getters, setters, toString...
        public String getName() { return name; }
        public void setName(String name) { this.name = name; }
        public String getDescription() { return description; }
        public void setDescription(String description) { this.description = description; }
        public String getVersion() { return version; }
        public void setVersion(String version) { this.version = version; }

        @Override
        public String toString() {
            return "Info[name=" + name + ", description=" + description + ", version=" + version + "]";
        }
    }

    // ==================== Getters & Setters for root class ====================

    public Server getServer() { return server; }
    public void setServer(Server server) { this.server = server; }

    public Spring getSpring() { return spring; }
    public void setSpring(Spring spring) { this.spring = spring; }

    public Management getManagement() { return management; }
    public void setManagement(Management management) { this.management = management; }

    public Info getInfo() { return info; }
    public void setInfo(Info info) { this.info = info; }

    @Override
    public String toString() {
        return "PropertyDefaultProperties[server=" + server +
               ", spring=" + spring +
               ", management=" + management +
               ", info=" + info + "]";
    }
}