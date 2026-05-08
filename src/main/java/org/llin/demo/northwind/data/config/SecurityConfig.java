package org.llin.demo.northwind.data.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
@Import({PropertyConfig.class})
public class SecurityConfig  {
	
	public SecurityConfig() {
		// TODO Auto-generated constructor stub
	}


	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("user").password("user").roles("USER").and().withUser("admin")
				.password("admin").roles("USER", "ADMIN");
	}

	@Bean("dataFilterChain")
	SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		return http.requiresChannel(channel -> channel.anyRequest())
				.authorizeRequests(authorize -> authorize.anyRequest().permitAll()).build();	
	}

}
