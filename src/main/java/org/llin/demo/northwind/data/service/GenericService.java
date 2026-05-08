package org.llin.demo.northwind.data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

@Deprecated	
abstract class GenericService {

	@Autowired
    private ApplicationContext context;

	public ApplicationContext getContext() {
		return context;
	}
	
}
