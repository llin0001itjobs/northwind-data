package org.llin.demo.northwind.data.repository.resource;

import org.llin.demo.northwind.data.config.PropertyDefaultProperties;
import org.llin.demo.northwind.data.entity.PurchaseOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.RepresentationModelProcessor;
import org.springframework.stereotype.Component;

@Component
public class PurchaseOrderResourceProcessor implements RepresentationModelProcessor<EntityModel<PurchaseOrder>> {

	@Autowired
	private PropertyDefaultProperties propertyDefaultConfig;
	
    @Override
    public EntityModel<PurchaseOrder> process(EntityModel<PurchaseOrder> model) {
        PurchaseOrder purchaseOrder = model.getContent();
        
		String apiURLContext = propertyDefaultConfig.getServer().getContextPath()
				+ propertyDefaultConfig.getSpring().getData().getRest().getBasePath();
		
        if (purchaseOrder != null) {
            Long orderStatus = (long) purchaseOrder.getOrderStatus().getId();
            model.add(Link.of(apiURLContext + "/purchaseOrder/" + purchaseOrder.getId() + "/orderStatus?id=" + orderStatus, "orderStatus"));        
            if (purchaseOrder.getApprovedBy() != null) {
                Long approvedById = (long) purchaseOrder.getApprovedBy().getId();
                model.add(Link.of(apiURLContext + "/purchaseOrder/" + purchaseOrder.getId() + "/approvedBy?id=" + approvedById, "approvedBy"));            	
            }

            if (purchaseOrder.getCreatedBy() != null) {
                Long createdById = (long) purchaseOrder.getCreatedBy().getId();
                model.add(Link.of(apiURLContext + "/purchaseOrder/" + purchaseOrder.getId() + "/createdBy?id=" + createdById, "createdBy"));            	
            }            

            if (purchaseOrder.getSubmittedBy() != null) {
                Long submittedById = (long) purchaseOrder.getSubmittedBy().getId();
                model.add(Link.of(apiURLContext + "/purchaseOrder/" + purchaseOrder.getId() + "/submittedBy?id=" + submittedById, "submittedBy"));            	
            }            

            if (purchaseOrder.getSupplier() != null) {
                Long supplierId = (long) purchaseOrder.getSupplier().getId();
                model.add(Link.of(apiURLContext + "/purchaseOrder/" + purchaseOrder.getId() + "/supplier?id=" + supplierId, "supplier"));            	
            }            
        }
        return model;
    }
}
