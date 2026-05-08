package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.OrderDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class OrderDetailResourceProcessor implements RepresentationModelProcessor<EntityModel<OrderDetail>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;

	@Override
	public EntityModel<OrderDetail> process(EntityModel<OrderDetail> model) {
		OrderDetail orderDetail = model.getContent();
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
		if (orderDetail != null) {
			Long customerOrderId = (long) orderDetail.getCustomerOrder().getId();
			model.add(Link.of(apiURLContext + "/orderDetail/" + orderDetail.getId()
					+ "/customerOrder?id=" + customerOrderId, "customerOrder"));
			if (orderDetail.getInventoryTransaction() != null) {
				Long inventoryTransactionId = (long) orderDetail.getInventoryTransaction().getId();
				model.add(Link.of(apiURLContext + "/orderDetail/" + orderDetail.getId()
						+ "/inventoryTransaction?id=" + inventoryTransactionId, "inventoryTransaction"));
			}
			if (orderDetail.getOrderStatus() != null) {
				Long orderStatus = (long) orderDetail.getOrderStatus().getId();
				model.add(Link.of(apiURLContext + "/orderDetail/" + orderDetail.getId()
						+ "/orderStatus?id=" + orderStatus, "orderStatus"));
			}
			if (orderDetail.getProduct() != null) {
				Long productId = (long) orderDetail.getProduct().getId();
				model.add(Link.of(apiURLContext + "/orderDetail/" + orderDetail.getId()
						+ "/product?id=" + productId, "product"));
			}
			if (orderDetail.getPurchaseOrder() != null) {
				Long purchaseOrderId = (long) orderDetail.getPurchaseOrder().getId();
				model.add(Link.of(apiURLContext + "/orderDetail/" + orderDetail.getId()
						+ "/purchaseOrder?id=" + purchaseOrderId, "purchaseOrder"));
			}			
		}
		return model;
	}
}
