package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.Invoice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class InvoiceResourceProcessor implements RepresentationModelProcessor<EntityModel<Invoice>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;
	
    @Override
    public EntityModel<Invoice> process(EntityModel<Invoice> model) {
        Invoice invoice = model.getContent();
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
        if (invoice != null) {
            // Assuming you have a method getCompanyId() that returns the company ID
            Long customerOrderId = (long) invoice.getCustomerOrder().getId();
            model.add(Link.of(apiURLContext + "/invoice/" + invoice.getId() + "/customerOrder?id=" + customerOrderId, "customerOrder"));            
        }
        return model;
    }
}
