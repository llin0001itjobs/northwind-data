package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.PurchaseOrderDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class PurchaseOrderDetailResourceProcessor
		implements RepresentationModelProcessor<EntityModel<PurchaseOrderDetail>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;

	@Override
	public EntityModel<PurchaseOrderDetail> process(EntityModel<PurchaseOrderDetail> model) {
		PurchaseOrderDetail purchaseOrderDetail = model.getContent();
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
		if (purchaseOrderDetail != null) {
			Long purchaseOrderId = (long) purchaseOrderDetail.getPurchaseOrder().getId();
			model.add(Link.of(apiURLContext + "/purchaseOrderDetail/" + purchaseOrderDetail.getId()
					+ "/purchaseOrder?id=" + purchaseOrderId, "purchaseOrder"));
			if (purchaseOrderDetail.getInventoryTransaction() != null) {
				Long inventoryTransactionId = (long) purchaseOrderDetail.getInventoryTransaction().getId();
				model.add(Link.of(apiURLContext + "/purchaseOrderDetail/"
						+ purchaseOrderDetail.getId() + "/inventoryTransaction?id=" + inventoryTransactionId,
						"inventoryTransaction"));
			}
			if (purchaseOrderDetail.getProduct() != null) {
				Long productId = (long) purchaseOrderDetail.getProduct().getId();
				model.add(Link.of(apiURLContext + "/purchaseOrderDetail/"
						+ purchaseOrderDetail.getId() + "/product?id=" + productId, "product"));
			}
		}
		return model;
	}
}
