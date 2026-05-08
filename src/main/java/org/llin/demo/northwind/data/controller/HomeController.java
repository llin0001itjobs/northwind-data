package org.llin.demo.northwind.data.controller;

import org.llin.demo.northwind.data.config.PropertyConfig;
import org.llin.demo.northwind.data.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	private PropertyConfig propertyConfig;

	@Autowired
	private CustomerOrderService co;

	@GetMapping("/entities")
	public ModelAndView showEntities() {
		ModelAndView modelAndView = new ModelAndView("home");
		execute(modelAndView);
		return modelAndView;
	}

	private void execute(ModelAndView modelAndView) {
		modelAndView.addObject("CustomerOrders", co.getCustomerOrders(propertyConfig.getDataSampleSize()));
	}

}