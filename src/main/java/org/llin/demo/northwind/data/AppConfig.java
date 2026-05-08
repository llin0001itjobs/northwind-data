package org.llin.demo.northwind.data;

import java.time.format.DateTimeFormatter;

import org.llin.demo.northwind.data.config.PropertyConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;

@Configuration
@Profile("dev")
public class AppConfig {

	@Autowired
    PropertyConfig propertyConfig;
    
    @Bean
    public Jackson2ObjectMapperBuilderCustomizer jsonCustomizer() {
    	String dateTimeFormat = propertyConfig.getPropertyDefaultProperties().getSpring().getJackson().getDateFormat();
        return builder -> {
            builder.simpleDateFormat(dateTimeFormat);
            builder.serializers(new LocalDateTimeSerializer(DateTimeFormatter.ofPattern(dateTimeFormat)));
        };
    }

} 