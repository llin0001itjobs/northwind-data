package org.llin.demo.northwind.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.persistence.EntityManager;

@RestController("dataTestController")
@RequestMapping("/api")
public class TestController {
	
	@Autowired
	private EntityManager entityManager;
	
	@GetMapping("/test")
	public String testConnection() {
		return entityManager.toString();
	}
	
	
}
