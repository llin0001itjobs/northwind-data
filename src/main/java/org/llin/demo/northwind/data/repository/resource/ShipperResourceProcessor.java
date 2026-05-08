package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.Shipper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class ShipperResourceProcessor implements RepresentationModelProcessor<EntityModel<Shipper>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;
	
    @Override
    public EntityModel<Shipper> process(EntityModel<Shipper> model) {
        Shipper shipper = model.getContent();
        
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
        if (shipper != null) {
            // Assuming you have a method getCompanyId() that returns the company ID
            Long companyId = (long) shipper.getCompany().getId();
            model.add(Link.of(apiURLContext + "/shipper/" + shipper.getId() + "/company?id=" + companyId, "company"));
        }
        return model;
    }
}
