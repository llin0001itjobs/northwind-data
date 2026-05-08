package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class SupplierResourceProcessor implements RepresentationModelProcessor<EntityModel<Supplier>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;
	
    @Override
    public EntityModel<Supplier> process(EntityModel<Supplier> model) {
        Supplier supplier = model.getContent();
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
        if (supplier != null) {
            int companyId = (int) supplier.getCompany().getId();
            model.add(Link.of(apiURLContext + "/supplier/" + supplier.getId() + "/company?id=" + companyId, "company"));
            String productIds = String.join(",", supplier.generateProductIds());
            model.add(Link.of(apiURLContext + "/supplier/" + supplier.getId() + "/product?id=" + productIds, "product"));	 
             
        }
        return model;
    }

}
