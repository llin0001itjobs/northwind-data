package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class CustomerResourceProcessor implements RepresentationModelProcessor<EntityModel<Customer>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;
	
    @Override
    public EntityModel<Customer> process(EntityModel<Customer> model) {
        Customer customer = model.getContent();
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
        if (customer != null) {
            // Assuming you have a method getCompanyId() that returns the company ID
            Long companyId = (long) customer.getCompany().getId();
            
            // Add the custom company link
            model.add(Link.of(apiURLContext + "/customer/" + customer.getId() + "/company?id=" + companyId, "company"));
        }

        return model;
    }
}

