package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class ProductResourceProcessor implements RepresentationModelProcessor<EntityModel<Product>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;

	@Override
	public EntityModel<Product> process(EntityModel<Product> model) {
		Product product = model.getContent();
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
		if (product != null) {
			String supplierIds = product.generateSupplierIds();
			model.add(Link.of(
					apiURLContext + "/product/" + product.getId() + "/supplier?id=" + supplierIds,
					"supplier"));
		}
		return model;
	}
}
