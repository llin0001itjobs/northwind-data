package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.CustomerOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class CustomerOrderResourceProcessor implements RepresentationModelProcessor<EntityModel<CustomerOrder>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;

	@Override
	public EntityModel<CustomerOrder> process(EntityModel<CustomerOrder> model) {
		CustomerOrder customerOrder = model.getContent();
		if (customerOrder != null) {
			String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
					+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
			
			// Assuming you have a method getCompanyId() that returns the company ID
			Long customerId = (long) customerOrder.getCustomer().getId();
			model.add(Link.of(apiURLContext + "/customerOrder/"
					+ customerOrder.getId() + "/customer?id=" + customerId, "customer"));
			Long orderStatusId = (long) customerOrder.getOrderStatus().getId();
			model.add(Link.of(apiURLContext +  "/customerOrder/" + customerOrder.getId()
					+ "/orderStatus?id=" + orderStatusId, "orderStatus"));
			if (customerOrder.getEmployee() != null) {
				Long employeeId = (long) customerOrder.getEmployee().getId();
				model.add(Link.of(apiURLContext +  "/customerOrder/" + customerOrder.getId()
						+ "/employee?id=" + employeeId, "employee"));
			}
			if (customerOrder.getShipper() != null) {
				Long shipperId = (long) customerOrder.getShipper().getId();
				model.add(Link.of(apiURLContext + "/customerOrder/" + customerOrder.getId()
						+ "/shipper?id=" + shipperId, "shipper"));
			}
			if (customerOrder.getOrderTaxStatus() != null) {
				Long orderTaxStatusId = (long) customerOrder.getOrderTaxStatus().getId();
				model.add(Link.of(apiURLContext +  "/customerOrder/" + customerOrder.getId()
						+ "/orderTaxStatus?id=" + orderTaxStatusId, "orderTaxStatus"));
			}
		}
		return model;
	}
}
